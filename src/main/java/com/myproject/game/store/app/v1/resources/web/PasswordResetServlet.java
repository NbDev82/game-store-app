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
import java.io.UnsupportedEncodingException;
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
    
    private AccountDAO accountDAO;
    private EmailDAO emailDAO;
    
    @Override
    public void init()throws ServletException {
        accountDAO = new AccountDAOImpl();
        emailDAO = new EmailDAOImpl();
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
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        String messageSupport = request.getParameter("messageSupport");
        String url = "/login.jsp";
        if(action.equals("resetPasswordRequest")){
            url = resetPasswordAction(request,response);
        }else if(action.equals("checkOTP")){
            url = checkOTPAction(request,response);
        }else if(action.equals("resetPassword")){
            url = resetPassword(request,response);
        }
        if(url != null && !url.isEmpty()){
            if(url.contains(request.getContextPath())){
                messageSupport = "Email is not existed!!!";
                request.setAttribute(messageSupport, "messageSupport");
                response.sendRedirect(url);
            }
            else
                getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
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

    private String resetPasswordAction(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        HttpSession session = request.getSession();
        
        String url = "/forgot-password.jsp";
        String email = request.getParameter("email");
        String messageEmailSupport = request.getParameter("messageEmailSupport");
        
        if (accountDAO.emailExisted(email)) {
            url = "/verifiedOtp.jsp";
            messageEmailSupport = "";
            String OTP = OTPGenerator.generateOTP();
            String OTPSalt = "hoangdeptrai";
            String OTPHash = accountDAO.hashPassword(OTP, OTPSalt);

            emailDAO.sendEmail("gamestore@gmail.com", email, "OTP response", "This is your OTP: "+OTP, false);

            //add a cookie that stores the user's email to browser
            Cookie c = new Cookie("OTP", OTPHash);
            c.setMaxAge(120); // 2 phut
            c.setPath("/");
            response.addCookie(c);
        } else {
            messageEmailSupport = "Email does not exist!!!";
            url = "/forgot-password.jsp";
        }
        session.setAttribute("email", email);       
        session.setAttribute("messageEmailSupport", messageEmailSupport);
        return url;
    }

    private String checkOTPAction(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String url = "/verifiedOtp.jsp"; 
        String providedOTP = request.getParameter("otp");
        String messageOtpSupport = request.getParameter("messageOtpSupport");
                
        String OTPSalt = "hoangdeptrai";
        String providedOTPHash = accountDAO.hashPassword(providedOTP, OTPSalt);
        
        Cookie[] cookies = request.getCookies();
        String storedOTPHash = CookieUtil.getCookieValue(cookies, "OTP");
        if(providedOTPHash.equals(storedOTPHash)) {
            messageOtpSupport = "";
            url = "/reset-password.jsp";
        }
        else{
            messageOtpSupport = "OTP is not corrected!!!";
            session.setAttribute("messageOtpSupport", messageOtpSupport);
        }
        //nếu sai chuyển về trang login
        return url;
    }

    private String resetPassword(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String url = "/reset-password.jsp";
        String email = (String)session.getAttribute("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("rePassword");
        String messagePasswordChangeSupport = request.getParameter("messagePasswordChangeSupport");
        if(password.equals(rePassword) && password.isBlank()==false){
            if (accountDAO.validatePassword(password))
            {   
                accountDAO.changePassword(email,password);
                messagePasswordChangeSupport = "";
                url = "/login.jsp";
            } else {
                messagePasswordChangeSupport = "Password needs a special character, uppercase letter, number, and 9+ characters";
            }
        }
        else {
            messagePasswordChangeSupport = "Password does not match, is blank or Email does not exist";
        }
        session.setAttribute("email", email);
        session.setAttribute("password", password);
        session.setAttribute("rePassword", rePassword);
        session.setAttribute("messagePasswordChangeSupport", messagePasswordChangeSupport);
        return url;
    }

    
}
