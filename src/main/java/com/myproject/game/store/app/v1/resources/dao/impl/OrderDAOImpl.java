/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Van Hoang
 */
public class OrderDAOImpl implements OrderDAO{
    Logger logger 
            = Logger.getLogger( 
                OrderDAOImpl.class.getName());

    @Override
    public Order createOrder(Cart cart) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        List<Game> games = cart.getGames();
        if(cart.getGames().isEmpty())
            return null;
        int totalPrice = 0;
        Order order = new Order();     
        List<OrderItem> items = new ArrayList<OrderItem>();      
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            LocalDateTime curentDateTime = LocalDateTime.now();
            LocalDateTime dueDateTime = curentDateTime.plusDays(7);
            Timestamp created = Timestamp.valueOf(curentDateTime);
            Timestamp due = Timestamp.valueOf(dueDateTime);
            order = new Order(
                    false, totalPrice, 0,
                    created.toString(), created, due, false
            );
            for(Game game: games){
                OrderItem ordI = buildOrderItemFromGame(game);
                items.add(ordI);
                ordI.setOrder(order);
                totalPrice += ordI.getAmount();
                game.getCarts().remove(cart);
            }
            order.setTotalAmount(totalPrice);
            order.setTax((int) Math.round(totalPrice * 0.1));
            order.setOrderItems(items);
            order.setCart(cart);
            cart.getOrders().add(order);
            cart.getGames().clear();
            cart.setTotalPrice(0);
            em.merge(cart);
            transaction.commit();
        } catch (Exception e) {
            logger.warning(e.getMessage());
            transaction.rollback();
            return null;
        } finally {
            em.close();
        }
        order = getOrderBySecurityCode(order.getSecurityCode());
        return order;
    }
    
    @Override
    public Order getOrderBySecurityCode(String securityCode){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String getOrderBySecurityCodeQuery = ""
                + "SELECT o FROM Order o "
                + "WHERE o.securityCode = :securityCode ";
        TypedQuery<Order> q = em.createQuery(getOrderBySecurityCodeQuery, Order.class);
        q.setParameter("securityCode", securityCode);
        Order order = null;
        try{
            order = q.getSingleResult();
        } catch(NoResultException e){
            logger.warning(e.getMessage());
        } finally{
            em.close();
        }
        return order;
    }
    
    public OrderItem buildOrderItemFromGame(Game game){
        int price = game.isDiscount()? game.getDiscountPrice(): game.getInitialPrice();
        OrderItem orderItem = new OrderItem(price,"no data",game);
        return orderItem;
    }

    @Override
    public Order getOrderByOrderId(Long orderId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        return em.find(Order.class, orderId);
    }

    @Override
    public List<Order> getAll() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String query = "SELECT o FROM Order o";
        TypedQuery<Order> q = em.createQuery(query, Order.class);
        List<Order> orders = null;
        try{
            orders = q.getResultList();
        }catch(Exception e){
            logger.info(e.getMessage());
        }
        return orders;
    }

    @Override
    public List<Order> filterByStatus(List<Order> orders, boolean status) {
        return orders.stream()
            .filter(order -> order.isStatus() == status)
            .collect(Collectors.toList());
    }

    @Override
    public List<Game> getOrderedGame(Long accId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Account acc = em.find(Account.class, accId);
        if(acc.getUser().getCart() == null)
            return null;
        List<Order> orders = acc.getUser().getCart().getOrders();
        if(orders == null)
            return null;
        orders = filterByStatus(orders, true);
        List<Game> games = new ArrayList<>();
        for(Order o : orders){
            for(OrderItem oi : o.getOrderItems()){
                games.add(oi.getGame());
            }
        }
        return games;
    }
    @Override
    public OrderItem getOrderItem(Long accId, Long gameId){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Account acc = em.find(Account.class, accId);
        if(acc.getUser().getCart() == null)
            return null;
        List<Order> orders = acc.getUser().getCart().getOrders();
        if(orders == null)
            return null;
        orders = filterByStatus(orders, true);
        for(Order o : orders){
            for(OrderItem oi : o.getOrderItems()){
                if(Objects.equals(oi.getGame().getGameId(), gameId)){
                    return oi;
                }
            }
        }
        return null; 
     }
}
