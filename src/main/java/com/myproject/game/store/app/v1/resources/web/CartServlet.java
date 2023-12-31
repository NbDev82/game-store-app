/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.dao.impl.AccountDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.CartDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.impl.OrderDAOImpl;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
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
        String url ="/404.jsp";
        Account acc = (Account)session.getAttribute("acc");
        if(acc == null){
            session.setAttribute("preUrl", request.getContextPath()+"/cart");
            response.sendRedirect(request.getContextPath() + "/login.jsp");
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
            action = "cart";  // default action
        }
        if(action.equals("cart")) {   
            getListCartItems(request,response);
        }else if(action.equals("clearCart")){
            clearCart(request,response);
        }else if(action.equals("removeItem")){
            removeItemFromCart(request,response);
        }else if(action.equals("createOrder")){
            createOrder(request, response);
        }else if(action.equals("addToCart")){
            addToCart(request, response);
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
        
        String role = request.getParameter("role");
        boolean paymentActive = true;
        if(role != null)
            paymentActive = role.equals("admin")?false:true;
        Cart cart = cartDAO.getCart(cartId);
        Order order = orderDAO.createOrder(cart);
        if(order == null)
            url= request.getContextPath() + "/home";
        request.setAttribute("paymentActive", paymentActive);
        session.setAttribute("order", order);
        requestDispatcher(url,request,response);
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
    
    public void getListCartItems(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Account acc = (Account)session.getAttribute("acc");
        String url = "/cart.jsp";
        Long userId = acc.getUser().getUserId();
        CartDAO cartDAO = new CartDAOImpl();
        Cart cart = cartDAO.getCartByUserId(userId);
        if(cart == null){
            if(cartDAO.createCart(userId)){
                cart=cartDAO.getCartByUserId(userId);
            }else{
                url=request.getContextPath()+"/error.jsp";
            }
        }
        session.setAttribute("cart", cart);
        requestDispatcher(url,request,response);
    }

    public void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        CartDAO cartDAO = new CartDAOImpl();
        AccountDAO accountDAO = new AccountDAOImpl();
        String url ="/404.jsp";
        Account acc = (Account)session.getAttribute("acc");
        String gameIdString = request.getParameter("gameId");
        if(acc == null){
            session.setAttribute("preUrl", request.getContextPath()+"/game?gameId="+gameIdString);
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }else{
            if(gameIdString != null){
                Long gameId = Long.valueOf(gameIdString);
                if(checkOrderedGame(acc,gameId)){
                    Cart cart = acc.getUser().getCart();
                    Long userId = acc.getUser().getUserId();
                    if(cart == null){
                        if(cartDAO.createCart(userId)){
                            cart = cartDAO.getCartByUserId(userId);
                            acc = accountDAO.getAccountById(acc.getAccountId());
                            session.setAttribute("acc", acc);
                        }
                    }
                    if(cart == null){
                        url=request.getContextPath()+"/error.jsp";
                    }else{
                        Long cartId = cart.getCartId();
                        cart = cartDAO.addItem(cartId, gameId);
                        if(cart == null){
                            url = "/error.jsp";
                        }else{
                           session.setAttribute("cart", cart);
                           url="/cart.jsp"; 
                        }      
                    }
                }else{
                    url = request.getContextPath();
                }
            }else{
                url = "/error.jsp";
            }
            requestDispatcher(url,request,response);
        }   
    }
    
    public void requestDispatcher(String url, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, ServletException{
        if(url != null && !url.isEmpty()){
            if(url.contains(request.getContextPath()))
                response.sendRedirect(url);
            else
                getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
        }
    }

    private boolean checkOrderedGame(Account acc, Long gameId) {
        OrderDAO orderDAO = new OrderDAOImpl();
        GameDAO gameDAO = new GameDAOImpl();
        List<Game> games = orderDAO.getOrderedGame(acc.getAccountId());
        Game game = gameDAO.getGameById(gameId);
        if(games == null)
            return true;
        boolean isExist = false;
        for(Game g: games){
            if(g.getGameId()==game.getGameId())
                isExist = true;
        }
        return !isExist;
    }
}
