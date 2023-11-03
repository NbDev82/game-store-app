/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CartDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.persistence.EntityManagerFactory;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.coyote.ajp.Constants;

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
        log("sadsadsad");
        int parameterCount = parameters.size();
        if(parameterCount == 0){
            url = getListCartItems(request, response, Long.valueOf(1));
        }else{
            String action = (String)request.getParameter("action");
            if(action.equals("removeFromCart")){
                int id = Integer.parseInt(request.getParameter("id"));
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
        log(action);
        String url = "/index.jsp";
        if (action == null) {
            action = "cart";  // default action
        }
        if (action.equals("shop")) {            
            url = "/index.jsp";    // the "index" page
        }else if(action.equals("clearCart")){
            log(action);
            clearCart(request,response);
        }else if (action.equals("removeItem")){
            removeItemFromCart(request,response);
        }
        else if(action.equals("purchase")){
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
    
    public void removeItemFromCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ServletContext sc = getServletContext();
        HttpSession session = request.getSession();
        Long userId = Long.valueOf(1);
        Long gameId = Long.valueOf(request.getParameter("gameId"));
        String url = "/index.jsp";
        try{
            CartDAO cartDAO = new CartDAOImpl();
            boolean isRemoveSuccess = cartDAO.remove(userId,gameId);
            Cart cart = cartDAO.getCartByUserId(userId);
            url = "/cart.jsp";
            if(!isRemoveSuccess){
                url = "/error.jsp";
            }
            session.setAttribute("cart", cart);
        }catch(Exception e){
            log(e.getMessage());
        }
        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
    
    public void purchase(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        HttpSession session = request.getSession();
        
        CartDAO cartDAO = new CartDAOImpl();
        Long userId = Long.valueOf(1);
        Cart cart = cartDAO.getCartByUserId(userId);
        session.setAttribute("cart", cart);
        sc.getRequestDispatcher("/checkout.jsp")
                .forward(request, response);
    }
    
    public void clearCart(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        boolean isSuccess = false;
        String message= null;
        String url= "/cart.jsp";
        CartDAO cartDAO = new CartDAOImpl();
        isSuccess = cartDAO.removeAllItem(Long.valueOf(1));
        Cart cart = cartDAO.getCartByUserId(Long.valueOf(1));
        if(isSuccess)
            message="Clear cart succesfully!";
        else{
            message="Failed to clear cart!";
            url = "/error.jsp";
        }
        request.setAttribute("cart", cart);
        request.setAttribute("message", message);
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    public String getListCartItems(HttpServletRequest request, HttpServletResponse response, Long id){
        CartDAO cartDAO = new CartDAOImpl();
        Cart cart = cartDAO.getCart(id);
        request.setAttribute("cart", cart);
        if(cart != null){
            return "/cart.jsp";
        }
        else
            log("cart is null");
        return "/cart.jsp";
    }
}
