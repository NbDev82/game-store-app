/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.CardDAO;
import com.myproject.game.store.app.v1.resources.dao.InvoiceDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CardDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.InvoiceDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.CardMethod;
import com.myproject.game.store.app.v1.resources.model.entity.Invoice;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
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
 * @author Van Hoang
 */
@WebServlet(name = "CheckOutServlet", urlPatterns = {"/checkout"})
public class CheckOutServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckOutServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutServlet at " + request.getContextPath() + "</h1>");
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
        if(action == null)
            action = "home";
        if(action.equals("home")){
            backToHome(request, response);
        }else if(action.equals("checkout")){
            checkOut(request, response);
        }else if(action.equals("checkCode")){
            checkCode(request, response);
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

    private void backToHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        getServletContext()
                .getRequestDispatcher("/index.jsp")
                .forward(request, response);
    }
    
    private void checkOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        CardDAO cardDAO = new CardDAOImpl();
        String url = "/thanks.jsp";
        String amount = request.getParameter("amount");
        String CartIdString = (String)request.getParameter("cardId");
        if(CartIdString !=null && CartIdString != ""){
            Long cardId = Long.valueOf(CartIdString);
            CardMethod card = cardDAO.getCardById(cardId);
            session.setAttribute("card", card);
            session.setAttribute("amount", amount);
        }else{
            request.setAttribute("message", "Please choose your payment method!!");
            url = "/order.jsp";
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    private void checkCode(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InvoiceDAO invoiceDAO = new InvoiceDAOImpl();
        HttpSession session = request.getSession();
        String url = "/thanks.jsp";
        CardMethod card = (CardMethod)session.getAttribute("card");
        String cardCode = card.getSecurityCode();
        String securityCode = request.getParameter("securityCode");
        boolean isSuccess = false;
        if(cardCode.equals(securityCode)){
            Order order = (Order)session.getAttribute("order");
            Invoice invoice = invoiceDAO.createInvoice(order);
            if(invoice != null){
                session.setAttribute("invoice", invoice);
                isSuccess = true;
//                emailService.transform(invoice);
            }
        }else{
            request.setAttribute("message", "Security code not match!!!");
        }
        request.setAttribute("isSuccess", isSuccess);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

}
