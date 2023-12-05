/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.CategoryDAO;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.HomeDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CategoryDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.HomeDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Category;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.GameImg;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "AddGameServlet", urlPatterns = { "/addGame" })
public class AddGameServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name = request.getParameter("name");
        String pubName = request.getParameter("pubName");
        String devName = request.getParameter("devName");

        String image1 = request.getParameter("image1");
        String image2 = request.getParameter("image2");
        String image3 = request.getParameter("image3");
        String image4 = request.getParameter("image4");
        String image5 = request.getParameter("image5");

        int initialPrice = Integer.parseInt(request.getParameter("initialPrice"));
        String content = request.getParameter("content");
        String title = request.getParameter("title");
        String warning = request.getParameter("warning");
        String award = request.getParameter("award");
        String releaseTimeStr = request.getParameter("releaseTime");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime releaseTime = LocalDateTime.parse(releaseTimeStr, formatter);
        Timestamp releaseTimestamp = Timestamp.valueOf(releaseTime);
        
        

        GameDAO gameDAO = new GameDAOImpl();
        HomeDAO homeDAO = new HomeDAOImpl();
        List<Game> games = homeDAO.getAllGames();

        Game game = new Game();
        game.setGameName(name);
        game.setDevName(devName);
        game.setPubName(pubName);
        game.setInitialPrice(initialPrice);
        game.setDiscount(false);
        game.setDiscountPrice(0);
        game.setContent(content);
        game.setTitle(title);
        game.setAward(award);
        game.setWarning(warning);
        game.setGlobalReview("Positive");
        game.setPercentPos(100);
        game.setMainImgId((long) (games.size() + 1) * 1000 + 1);
        game.setReleaseDate(releaseTimestamp);

        gameDAO.InsertGame(game);

        GameImg gameImg1 = new GameImg();
        gameImg1.setGame(game);
        gameImg1.setImgLink(image1);
        gameImg1.setImgId((long) (games.size() + 1) * 1000 + 1);
        gameDAO.InsertImage(gameImg1);
        
        GameImg gameImg2 = new GameImg();
        gameImg2.setGame(game);
        gameImg2.setImgLink(image2);
        gameImg2.setImgId((long) (games.size() + 1) * 1000 + 2);
        gameDAO.InsertImage(gameImg2);
        
        GameImg gameImg3 = new GameImg();
        gameImg3.setGame(game);
        gameImg3.setImgLink(image3);
        gameImg3.setImgId((long) (games.size() + 1) * 1000 + 3);
        gameDAO.InsertImage(gameImg3);

        GameImg gameImg4 = new GameImg();
        gameImg4.setGame(game);
        gameImg4.setImgLink(image4);
        gameImg4.setImgId((long) (games.size() + 1) * 1000 + 4);
        gameDAO.InsertImage(gameImg4);

        GameImg gameImg5 = new GameImg();
        gameImg5.setGame(game);
        gameImg5.setImgLink(image5);
        gameImg5.setImgId((long) (games.size() + 1) * 1000 + 5);
        gameDAO.InsertImage(gameImg5);
        
        
        
        
        
        response.sendRedirect("managerGameStore");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
