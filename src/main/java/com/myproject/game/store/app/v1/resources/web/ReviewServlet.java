/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.dao.ReviewDAO;
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
        HttpSession session = request.getSession();
        
        response.setContentType("text/html;charset=UTF-8");
        String scoreStr = request.getParameter("score");
        String txtcomment = request.getParameter("txtcomment");
        String gameId = request.getParameter("gameId");
        int score = Integer.parseInt(scoreStr);
        String url = "/product.jsp";
        
        Account acc = (Account) session.getAttribute("acc");
        GameDAO gameDAO = new GameDAOImpl();
        Game game = gameDAO.getGameById(Long.valueOf(gameId));
        
        Review review = new Review();
        review.setComment(txtcomment);
        review.setScore(score);
        review.setUser(acc.getUser());
        
//        Kiem tra game da mua chua
        OrderDAO orderDAO = new OrderDAOImpl();
        List<Game> ListGameOrdered = new ArrayList<>();
        ListGameOrdered = orderDAO.getOrderedGame(Long.valueOf(acc.getUser().getUserId()));
        OrderItem oi = orderDAO.getOrderItem(Long.valueOf(acc.getUser().getUserId()),game.getGameId());
//        if (ListGameOrdered.contains(game)) {
//            review.setOrderItem(orderItem);
//            ReviewDAO reviewDAO = new ReviewDAOImpl();
//            reviewDAO.addReview(review);
//        }
        for (Game g: ListGameOrdered){
            if(Objects.equals(g.getGameId(), game.getGameId()))
            {
                review.setOrderItem(oi);
                ReviewDAO reviewDAO = new ReviewDAOImpl();
                reviewDAO.addReview(review);
            }
        }
        List<String> supports = new ArrayList<>();
        List<String> languageNames = new ArrayList<>();

        List<Review> reviews = new ArrayList<>();
        for (OrderItem i : game.getOrderItems()) {
            for (Review j : i.getReviews()) {
                reviews.add(j);
            }
        }

//      List<String> supports = List.of("Interface", "Full Audio", "Subtitles");  
        for (LanguageSupport i : game.getLanguageSupports()) {
            if (!supports.contains(i.getSupport())) {
                supports.add(i.getSupport());
            }
        }
        for (LanguageSupport i : game.getLanguageSupports()) {
            if (!languageNames.contains(i.getLanguageName())) {
                languageNames.add(i.getLanguageName());
            }
        }

        request.setAttribute("game", game);
        request.setAttribute("supports", supports);
        request.setAttribute("languageNames", languageNames);
        request.setAttribute("reviews", reviews);
        request.getRequestDispatcher(url).forward(request, response);
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
