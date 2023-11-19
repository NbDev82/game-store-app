/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.AccountDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/logAcc"})
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
        if (action == null)
            action = "logout";
        
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
    
    private String processAction(String action, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/login.jsp";
        switch (action) {
            case "logout":
                url = "/login.jsp";
                break;
            case "login":
                url = handleLoginAction(request, response);
                break;
            case "createAcc":
                url = "/signIn.jsp";
                break;
            default:
                break;
        }
        return url;
    }
    
    private String handleLoginAction(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url = "";
        String userName = request.getParameter("userName");
        String passwordHash = request.getParameter("passwordHash");
        AccountDAO accDao = new AccountDAOImpl();
        String message;
        Account acc = accDao.validateAccount(userName, passwordHash);
        if (acc != null) {
            message = "";
            url = "/cart.jsp";
            session.setAttribute("acc", acc);
        }
        else {
            message = "Invalid username or password!!!";
            url = "/login.jsp";
        }   
        request.setAttribute(("message"), message);
        return url;
    }
}
