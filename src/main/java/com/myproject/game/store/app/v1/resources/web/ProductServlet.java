/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.HomeDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.HomeDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.LanguageSupport;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.in;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "ProductServlet", urlPatterns = {"/game"})
public class ProductServlet extends HttpServlet {

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
        String url="/product.jsp";
        response.setContentType("text/html;charset=UTF-8");
        Long id = Long.valueOf(request.getParameter("gameId"));
        GameDAO gameDAO= new GameDAOImpl();
        Game game = gameDAO.getGameById(id);
        List<String> supports = new ArrayList<String>();
        List<String> languageNames= new ArrayList<String>();
//      List<String> supports = List.of("Interface", "Full Audio", "Subtitles");  
        for (LanguageSupport i : game.getLanguageSupports()){
            if(!supports.contains(i.getSupport()))
                supports.add(i.getSupport());
        }
        for (LanguageSupport i : game.getLanguageSupports()){
            if(!languageNames.contains(i.getLanguageName()))
                languageNames.add(i.getLanguageName());
        }
        request.setAttribute("game", game);
        request.setAttribute("supports", supports);
        request.setAttribute("languageNames", languageNames);
        request.getRequestDispatcher(url).forward(request,response);
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
