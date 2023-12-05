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
import com.myproject.game.store.app.v1.resources.model.entity.LanguageSupport;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.nustaq.serialization.minbin.MinBin.print;

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
//        HttpSession session = request.getSession();
        
        response.setContentType("text/html;charset=UTF-8");
        int score =Integer.parseInt( request.getParameter("score"));
        String txtcomment = request.getParameter("txtcomment");
        String gameIdStr = request.getParameter("gameId");
        Long gameId = Long.valueOf(gameIdStr);
        Long accId = Long.valueOf(request.getParameter("accId"));
        
//            Account acc = (Account) session.getAttribute("acc");
        AccountDAO accountDAO = new AccountDAOImpl();
        Account acc = accountDAO.getAccountById(accId);
        
        GameDAO gameDAO = new GameDAOImpl();
        Game game = gameDAO.getGameById(gameId);

//        ReviewDAO reviewDAO = new ReviewDAOImpl();
//        reviewDAO.addReview(game,acc,txtcomment,score);
        Review review = new Review();
        review.setComment(txtcomment);
        review.setScore(score);
        review.setUser(acc.getUser());

//        Kiem tra game da mua chua
        OrderDAO orderDAO = new OrderDAOImpl();
        List<Game> ListGameOrdered = orderDAO.getOrderedGame(accId);
        OrderItem oi = orderDAO.getOrderItem(accId, gameId);
        review.setOrderItem(oi);
        for (Game g : ListGameOrdered) {
            if (Objects.equals(g.getGameId(), game.getGameId())) {

                ReviewDAO reviewDAO = new ReviewDAOImpl();
                reviewDAO.addReview(review);
            }
        }


        
        String url = "game?gameId="+gameIdStr;
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
        processRequest(request, response);
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
