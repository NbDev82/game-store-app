/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.dao.UserDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CartDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.UserDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Wallet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
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
@WebServlet(urlPatterns = "/cart")
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
        Map<String, String[]> parameters = request.getParameterMap();
        String url ="/404.jsp";
        int parameterCount = parameters.size();
        if(parameterCount == 0){
            url = getListCartItems(request, response, 1);
        }else{
            String action = (String)request.getParameter("action");
            if(action.equals("removeFromCart")){
                int id = Integer.parseInt(request.getParameter("id"));
                url = removeItemFromCartByGameId(id);
            }
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
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
        if(action.equals("clearCart")){
            clearCart(request,response);
        } else if(action.equals("purchase")){
            purchase(request, response);
        } else{
            badRequest(request, response);
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
    
    public void badRequest(HttpServletRequest request, HttpServletResponse response){
        //chưa có
    }
    
    public String removeItemFromCartByGameId(int gameId){
        String url = "/cart.jsp";
        try{
            CartDAO cartDAO = new CartDAOImpl(DBUtil.getEmFactory());
            boolean isRemoveSuccess = cartDAO.remove(gameId);
            if(!isRemoveSuccess){
                url = "/error.jsp";
            }
        }catch(Exception e){
            log(e.getMessage());
        }
        return url;
    }
    
    public void purchase(HttpServletRequest request, HttpServletResponse response){
        try{
            HttpSession session = request.getSession();
            int totalPrice = (int) session.getAttribute("totalPrice");
        }catch(Exception e){
            log(e.getMessage());
        }
        UserDAO userDAO = new UserDAOImpl(DBUtil.getEmFactory());
        Wallet wallet = userDAO.getWallet(1);
        if(wallet == null)
            log("not find wallet");
        else
            log("wallet id: "+ wallet.getWalletId());
        String url = "";
//        getServletContext()
//            .getRequestDispatcher(url)
//            .forward(request, response);
    }
    
    public void clearCart(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        boolean isSuccess = false;
        String message= null;
        String url= "/cart.jsp";
        CartDAO cartDAO = new CartDAOImpl(DBUtil.getEmFactory());
        isSuccess = cartDAO.deleteAllItemFromCartByUserId(1);
        if(isSuccess)
            message="Clear cart succesfully!";
        else{
            message="Failed to clear cart!";
            url = "/error.jsp";
        }
        request.setAttribute("message", message);
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    
    public String getListCartItems(HttpServletRequest request, HttpServletResponse response, int id){
        CartDAO cartDAO = new CartDAOImpl(DBUtil.getEmFactory());
        List<Game> cartItems = cartDAO.ShowOrderItemByUserId(1);
        int totalPrice = 0;
        for(Game g : cartItems){
            if(g.isDiscount())
                totalPrice += g.getDiscountPrice();
            else
                totalPrice += g.getInitialPrice();
        }
        HttpSession session = request.getSession();
        session.setAttribute("totalPrice", totalPrice);
        request.setAttribute("cartItems", cartItems);
        log(String.valueOf(totalPrice));
        return "/cart.jsp";
    }
}
