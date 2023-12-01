/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.EmailDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.AccountDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.EmailDAOImpl;
import generator.OTPGenerator;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.CookieUtil;

/**
 *
 * @author Van Hoang
 */
@WebServlet(name = "PasswordResetServlet", urlPatterns = {"/passwordReset"})
public class PasswordResetServlet extends HttpServlet {

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
            out.println("<title>Servlet PasswordResetServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PasswordResetServlet at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        String url = "/login.jsp";
        if(action.equals("resetPasswordRequest")){
            url = resetPasswordAction(request,response);
        }else if(action.equals("checkOTP")){
            url = checkOTPAction(request,response);
        }else if(action.equals("resetPassword")){
            url = resetPassword(request,response);
        }
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

    private String resetPasswordAction(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        
        String url = "/reset.jsp";
        String email = request.getParameter("email");
        session.setAttribute("email", email);
        
        AccountDAO accountDAO = new AccountDAOImpl();
        EmailDAO emailDAO = new EmailDAOImpl();
        
        String OTP = OTPGenerator.generateOTP();
        String OTPSalt = "hoangdeptrai";
        String OTPHash = accountDAO.hashPassword(OTP, OTPSalt);
        
        emailDAO.sendEmail("gamestore@gmail.com", email, "OTP response", "This is your OTP: "+OTP, false);
        
        //add a cookie that stores the user's email to browser
        Cookie c = new Cookie("OTP", OTPHash);
        c.setMaxAge(120); // 2 phut
        c.setPath("/");
        response.addCookie(c);
        
        return url;
    }

    private String checkOTPAction(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        
        String url = "/login.jsp";
        String providedOTP = request.getParameter("OTP");
        
        AccountDAO accountDAO = new AccountDAOImpl();
        
        String OTPSalt = "hoangdeptrai";
        String providedOTPHash = accountDAO.hashPassword(providedOTP, OTPSalt);
        
        Cookie[] cookies = request.getCookies();
        String storedOTPHash = CookieUtil.getCookieValue(cookies, "OTP");
        if(providedOTPHash.equals(storedOTPHash))//chuyển qua trang đặt mật khẩu mới
            url = "/next-step.jsp";
        else{
            session.setAttribute("email", null);
        }
        //nếu sai chuyển về trang login
        return url;
    }

    private String resetPassword(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        AccountDAO accountDAO = new AccountDAOImpl();
        
        String url = "/next-step.jsp";
        String email = (String)session.getAttribute("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");
        if(password.equals(rePassword)){
            accountDAO.changePassword(email,password);
        }
        return url;
    }

    
}
