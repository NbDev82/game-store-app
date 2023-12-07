/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.dao.ReviewDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.AccountDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.OrderDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.ReviewDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(name = "ReviewServlet", urlPatterns = {"/review"})
public class ReviewServlet extends HttpServlet {

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
        OrderDAO orderDAO = new OrderDAOImpl();
        GameDAO gameDAO = new GameDAOImpl();
        AccountDAO accountDAO = new AccountDAOImpl();
        ReviewDAO reviewDAO = new ReviewDAOImpl();
                
        response.setContentType("text/html;charset=UTF-8");
        String gameIdStr = request.getParameter("gameId");
        Long gameId = Long.valueOf(gameIdStr);
        Long accId = Long.valueOf(request.getParameter("accId"));
        
        OrderItem oi = orderDAO.getOrderItem(accId, gameId);
        boolean isSuccess = false;
        if(oi != null){
            Account acc = accountDAO.getAccountById(accId);
            int score = Integer.parseInt(request.getParameter("score"));
            String txtcomment = request.getParameter("txtcomment");
            Review review = new Review(score,txtcomment,new Timestamp(System.currentTimeMillis() + LocalTime.now().getNano() / 1_000_000));
            isSuccess = reviewDAO.add(review, oi,acc.getUser().getUserId());
        }
        String url = "game?gameId=" + gameId;
        response.sendRedirect(url);
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
//        String gameIdStr = request.getParameter("gameId");
        processRequest(request, response);
//        String url = "game?gameId=" + gameIdStr;
//        request.getRequestDispatcher(url).forward(request,response);
//        response.sendRedirect(url);
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
//        String gameIdStr = request.getParameter("gameId");
        processRequest(request, response);
//        String url = "game?gameId=" + gameIdStr;
//        request.getRequestDispatcher(url).forward(request,response);
//        response.sendRedirect(url);

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
