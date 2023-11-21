/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.*;
import com.myproject.game.store.app.v1.resources.dao.impl.*;
import com.myproject.game.store.app.v1.resources.model.entity.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
@WebServlet(name = "CreateAccServlet", urlPatterns = {"/createAcc"})
public class CreateAccServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateAccServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CreateAccServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null)
            action="createAcc";
        String url = processAction(action, request, response);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private Boolean isValidPhoneNumber(String phoneNumber) {
        try {
            String regex = "^\\d{10}$";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(phoneNumber);
            return matcher.matches();
        }
        catch (Exception e) {
            return false;
        }
    }
        
    private String processAction (String action, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/signIn.jsp";
        switch (action) {
            case "continue":
                url = handleContinueAction(request, response);
                break;
            case "doneCreateAcc":
                url = handleDoneCreateAcc(request, response);
                break;
            default:
                break;
        }
        return url;
    }
    
    private String handleContinueAction(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url = "";        
        String email = request.getParameter("email");
        String confirmMail = request.getParameter("confirmMail");
        String agreeCheck = request.getParameter("agreeCheck");
        String phoneNumber = request.getParameter("phoneNumber");       
        String messageContinueError = request.getParameter("messageContinueError");      
        boolean inValidEmail = false;
        boolean inValidNumber = false;
        boolean notCheck = false;
        boolean isAgreed = "on".equals(agreeCheck);
        AccountDAO accDao = new AccountDAOImpl();
        
        if (!isAgreed) {
            messageContinueError = "Please agree our policy to continue...";
            notCheck = true;
        }
        if (!isValidPhoneNumber(phoneNumber)) {
            messageContinueError = "Phone number must include 10 numeric characters...";
            inValidNumber = true;
        }
        if (email.isEmpty() || confirmMail.isEmpty() || !email.equals(confirmMail) || accDao.emailExisted(email)) {
            messageContinueError = "Email does not match or is blank!!!";
            inValidEmail = true;
            if (accDao.emailExisted(email))
                messageContinueError = "Email existed!!!";
        }
        if (inValidEmail || notCheck || inValidNumber)
            url = "/signIn.jsp";
        else {
            messageContinueError = "";
            url = "/addAccInfor.jsp";
        }       
        session.setAttribute("email", email);
        session.setAttribute("confirmMail", confirmMail);
        session.setAttribute("phoneNumber", phoneNumber);
        session.setAttribute("messageContinueError", messageContinueError);
        session.setAttribute("inValidEmail", inValidEmail);
        session.setAttribute("inValidNumber", inValidNumber);
        session.setAttribute("isAgreed", isAgreed);
        session.setAttribute("notCheck", notCheck);
        return url;
    }
    
    private String handleDoneCreateAcc (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String messageDoneCreateAccError = request.getParameter("message");
        String url = "";
        AccountDAO accDao = new AccountDAOImpl();
        
        if (accDao.usernameExisted(userName)) {
            messageDoneCreateAccError = "Username existed!!!";
            url = "/addAccInfor.jsp";
        } else if (password.equals(confirmPassword) == false || password.isBlank()) {
            messageDoneCreateAccError = "Password does not match or is blank!!!";
            url = "/addAccInfor.jsp";
        } else if (!accDao.validatePassword(password)) {
            messageDoneCreateAccError = "Password needs a special character, uppercase letter, number, and 9+ characters";
            url = "/addAccInfor.jsp";
        } else {
            User user = new User();
            user.setPhoneNumber((String)session.getAttribute("phoneNumber"));
            String salt = accDao.generateSalt();
            String email = (String)session.getAttribute("email");
            Account acc = addAcc(userName, password, salt, email, user);
            try {
                if (accDao.insertAccount(acc))
                    url = "/login.jsp";
                messageDoneCreateAccError = "";
                session.setAttribute("acc", acc);
                session.setAttribute("user", user);
            }
            catch (Exception e) {
                messageDoneCreateAccError = e.getMessage();
                url = "/addAccInfor.jsp";
            }
        }
        session.setAttribute("userName", userName);
        session.setAttribute("password", password);
        session.setAttribute("confirmPassword", confirmPassword);
        session.setAttribute("messageDoneCreateAccError", messageDoneCreateAccError);
        return url;
    }
    
    private Account addAcc(String userName, String password, String salt, String email, User user) {
        Account acc = new Account();
        AccountDAO accDao = new AccountDAOImpl();
        acc.setEmail(email);
        acc.setUserName(userName);
        acc.setSalt(salt);
        acc.setPasswordHash(accDao.hashPassword(password, acc.getSalt()));
        acc.setCreatedAt(new Timestamp(java.lang.System.currentTimeMillis()));
        acc.setUser(user);
        return acc;
    }
}
