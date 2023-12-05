/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.CategoryDAO;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CategoryDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Category;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "EditGameServlet", urlPatterns = {"/edit"})
public class EditGameServlet extends HttpServlet {

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
        String gameId = request.getParameter("gameId");
        String name = request.getParameter("name");
        String pubName = request.getParameter("pubName");
        String devName = request.getParameter("devName");
        
        int initialPrice = Integer.parseInt(request.getParameter("initialPrice"));
        int discountPrice = Integer.parseInt(request.getParameter("discountPrice"));
        String content = request.getParameter("content");
        String title = request.getParameter("title");
        String warning = request.getParameter("warning");
        String award = request.getParameter("award");
        String categoryId = request.getParameter("category");
        
        CategoryDAO categoryDAO= new CategoryDAOImpl();
        Category category = categoryDAO.getCategoryById(Long.valueOf(categoryId));
        List<Category> categories = new ArrayList<>();
        categories.add(category);
        
        GameDAO gameDAO=new GameDAOImpl();
        Game game = gameDAO.getGameById(Long.valueOf(gameId));
        game.getCategories().add(category);
        game.setGameName(name);
        game.setDevName(devName);
        game.setPubName(pubName);
        game.setInitialPrice(initialPrice);
        game.setDiscount(false);
        game.setDiscountPrice(discountPrice);
        game.setContent(content);
        game.setTitle(title);
        game.setAward(award);
        game.setWarning(warning);
        game.setCategories(categories);
        
        gameDAO.UpdateGame(game);
        
        response.sendRedirect("managerGameStore");
        
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
