/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.CartDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.OrderDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import javax.servlet.ServletContext;
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
        HttpSession session = request.getSession();
        Map<String, String[]> parameters = request.getParameterMap();
        String url ="/404.jsp";
        int parameterCount = parameters.size();
        if(parameterCount == 0){
            Account acc = (Account)session.getAttribute("acc");
            if(acc == null){
                session.setAttribute("preUrl", request.getContextPath()+"/cart");
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }else{
                Long userId = acc.getUser().getUserId();
                url = getListCartItems(request, response, userId);
                getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
            }
        }else{
            doPost(request, response);
        }
            
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
        if(action == null) {
            action = "shop";  // default action
        }
        if(action.equals("shop")) {            
            getServletContext()
                    .getRequestDispatcher("/index.jsp")
                    .forward(request, response);  // the "index" page
        }else if(action.equals("clearCart")){
            clearCart(request,response);
        }else if(action.equals("removeItem")){
            removeItemFromCart(request,response);
        }else if(action.equals("createOrder")){
            createOrder(request, response);
        }else{
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
        Long cartId = Long.valueOf(request.getParameter("cartId"));
        Long gameId = Long.valueOf(request.getParameter("gameId"));
        String url = "/index.jsp";
        try{
            CartDAO cartDAO = new CartDAOImpl();
            Cart cart = cartDAO.remove(cartId,gameId);
            url = "/cart.jsp";
            if(cart == null){
                url = "/error.jsp";
            }
            session.setAttribute("cart", cart);
        }catch(Exception e){
            log(e.getMessage());
        }
        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
    
    public void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String url = "/order.jsp";
        CartDAO cartDAO = new CartDAOImpl();
        OrderDAO orderDAO = new OrderDAOImpl();
        Long cartId = Long.valueOf((String)request.getParameter("cartId"));
        Cart cart = cartDAO.getCart(cartId);
        Order order = orderDAO.createOrder(cart);
        session.setAttribute("order", order);
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    public void clearCart(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException{
        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAOImpl();
        String message= null;
        String url= "/cart.jsp";
        Long cartId = Long.valueOf((String)request.getParameter("cartId"));
        Cart cart = cartDAO.removeAllItem(cartId);
        if(cart != null)
            message="Clear cart succesfully!";
        else{
            message="Failed to clear cart!";
            url = "/error.jsp";
        }
        session.setAttribute("cart", cart);
        request.setAttribute("message", message);
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
    
    public String getListCartItems(HttpServletRequest request, HttpServletResponse response, Long userId){
        String url = "/cart.jsp";
        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAOImpl();
        Cart cart = cartDAO.getCartByUserId(userId);
        if(cart == null){
            cart = cartDAO.createCart(userId);
        }
        if(cart == null)
            url=request.getContextPath()+"/error.jsp";
        session.setAttribute("cart", cart);
        return url;
    }
}
