/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.web;

import com.myproject.game.store.app.v1.resources.dao.impl.OrderDAOImpl;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import com.myproject.game.store.app.v1.resources.model.entity.Role;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Van Hoang
 */
@WebServlet(name = "AdminServlet", urlPatterns = {"/admin"})
public class AdminServlet extends HttpServlet {
    private OrderDAO orderDAO;
    
    @Override
    public void init()throws ServletException{
        orderDAO = new OrderDAOImpl();
    }
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
            out.println("<title>Servlet AdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
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
        String url = "/admin";
        Account acc = (Account)session.getAttribute("acc");
        boolean isAdmin = false;
        if(acc != null){
            for(Role r: acc.getRoles()){
                if(r.getRoleName().equals("Admin")){
                    isAdmin = true;
                    break;
                }
            }
        }
        if(acc == null){
            session.setAttribute("preUrl", request.getContextPath()+"/admin");
            url= request.getContextPath() + "/login.jsp";
        }else if(!isAdmin){
            url= request.getContextPath() + "/home";
        }else{
            url = processRequestAction(request, response);
        }
        requestDispatcher(url, request, response);
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
        String url = "/admin.jsp";
        if(action == null)
            action = "admin";
        if(action.equals("admin")){
            url = loadAdminPage(request, response);
        } else if(action.equals("showOrder")){
            url = getOrderManagement(request, response);
        }
        requestDispatcher(url, request, response);
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

    public String getOrderManagement(HttpServletRequest request, HttpServletResponse response){
        String url = "/order-pending.jsp";
        List<Order> orders = orderDAO.getAll();
        String filter = request.getParameter("filter");
        if(filter != null && !filter.equals("All")){
            boolean  status;
            if(filter.equals("Success"))
                status= true;
            else
                status= false;
            log(filter);
            if(filter != null && !filter.isEmpty()){
                orders = orderDAO.filterByStatus(orders, status);
            }
        }
        request.setAttribute("orders", orders);
        request.setAttribute("filter", filter);
        return url;
    }
    


    private String processRequestAction(HttpServletRequest request, HttpServletResponse response) {
        String action= request.getParameter("action");
        String url="/admin.jsp";
        if(action == null)
            action="admin";
        if(action.equals("admin")){
            url = "/admin.jsp";
        }else if(action.equals("orderManagement")){
            url = getOrderManagement(request, response);
        }else if(action.equals("operatorGame")){
            
        }else if(action.equals("showProfit")){
            
        }
        return url;
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

    private String loadAdminPage(HttpServletRequest request, HttpServletResponse response) {
        String url = "/admin.jsp";
        return url;
    }
}
