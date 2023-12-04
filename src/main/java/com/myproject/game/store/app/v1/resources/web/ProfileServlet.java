/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.EmailDAO;
import com.myproject.game.store.app.v1.resources.dao.UserDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.AccountDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.EmailDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.UserDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.User;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ProfileServlet", urlPatterns = {"/profiles"})
public class ProfileServlet extends HttpServlet {
    private AccountDAO accountDAO;
    private UserDAO userDAO;
    
    @Override
    public void init()throws ServletException {
        accountDAO = new AccountDAOImpl();
        userDAO = new UserDAOImpl();
    }

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
            out.println("<title>Servlet ProfileServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileServlet at " + request.getContextPath() + "</h1>");
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
        log("get into servlet");
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String url = "/view-profile.jsp";
        if (action.equals("viewProfile"))
            url = "/view-profile.jsp";
        else if (action.equals("editProfile"))
            url = handleEditProfileAction(request, response);
        
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
        
    }
    
    private String handleEditProfileAction(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter("userName");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String summary = request.getParameter("summary");
        log(userName);        
        log(firstName);        
        log(lastName);        
        log(email);        
        log(phoneNumber);        
        log(summary);
        User user = (User)session.getAttribute("user");
        Account acc = (Account)session.getAttribute("acc");
        String url = "edit-profile.jsp";
        if(userDAO.isValidPhoneNumber(phoneNumber)) {
            user.setFirstName(firstName);
            user.setLastName(lastName);
            user.setSummary(summary);
            user.setPhoneNumber(phoneNumber);
            try {
                if(userDAO.updateUser(user)) {
                    acc.setEmail(email);
                    acc.setUserName(userName);
                    acc.setUser(user);
                    if(accountDAO.updateAccount(acc))
                        url = "/view-profile.jsp";
                }
            } catch(Exception e) {
                System.out.println(e.getMessage());
                url = "/    edit-profile.jsp";
            }
        }
        
        return url;
        
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

}
