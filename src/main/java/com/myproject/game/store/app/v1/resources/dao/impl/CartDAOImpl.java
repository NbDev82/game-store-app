/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author Van Hoang
 */
public class CartDAOImpl implements CartDAO{
    private final EntityManager em;
    
    public CartDAOImpl(EntityManagerFactory emf){
        em = emf.createEntityManager();
    }
    @Override
    public List<Game> ShowOrderItemByUserId(int id){
        
        String GetOrderListByUserId = ""
                + "SELECT g "
                + "FROM Game g,OrderItem ordi, Order ord "
                + "WHERE g.gameId = ordi.gameId AND ordi.orderId = ord.orderId AND ord.userId= :id ";
        TypedQuery<Game> query= em.createQuery(GetOrderListByUserId, Game.class);
        query.setParameter("id", id);
        List<Game> order = null;
        try{
            order = query.getResultList();
        }catch(NoResultException e){
            System.out.println(e);
        } finally{
            em.close();
        }
        return order;
    }

    @Override
    public boolean deleteAllItemFromCartByUserId(int id) {
        
        int orderID = getOrderIdByUserId(id);
        String deleteAllItemFromCartByUserId = ""
                + "DELETE "
                + "FROM OrderItem ordi "
                + "WHERE ordi.orderId = :orderID ";
        Query query= em.createQuery(deleteAllItemFromCartByUserId, OrderItem.class);
        query.setParameter("orderID", orderID);
        return queryExecuteUpdate(query);
    }
    public int getOrderIdByUserId(int userId){
        String getOrderIdByUserId = ""
                + "SELECT ord "
                + "FROM Order ord "
                + "WHERE ord.userId = :userId ";
        TypedQuery<Order> query= em.createQuery(getOrderIdByUserId, Order.class);
        query.setParameter("userId", userId);
        int orderId = 0;
        try{
            Order order = query.getSingleResult();
            orderId = order.getOrderId();
        }catch(NoResultException e){
            System.out.println(e);
        } finally{
            em.close();
        }
        return orderId;
    }

    @Override
    public boolean remove(int gameId) {
        String removeItemByIdString=""
                + "DELETE "
                + "FROM OrderItem ordi "
                + "WHERE ordi.gameId = :gameId ";
        Query query = em.createQuery(removeItemByIdString, OrderItem.class);
        query.setParameter("gameId", gameId);
        return queryExecuteUpdate(query);
    }
    
    public boolean queryExecuteUpdate(Query query){
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            query.executeUpdate();
            trans.commit();
            return true;
        }catch(NoResultException e){
            trans.rollback();
            System.out.println(e);
            return false;
        } finally{
            em.close();
        }
    } 
}
