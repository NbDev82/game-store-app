/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.CartDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.User;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import java.util.logging.Level; 
import java.util.logging.Logger;

/**
 *
 * @author Van Hoang
 */
public class CartDAOImpl implements CartDAO{
    Logger logger 
            = Logger.getLogger( 
                CartDAOImpl.class.getName());
    
    @Override
    public Cart removeAllItem(Long cartId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Cart cart = em.find(Cart.class, cartId);
        if(cart != null){
            List<Game> games = cart.getGames();
            EntityTransaction trans = em.getTransaction();
            try{
                trans.begin();  
                for(Game game : games){
                    game.getCarts().remove(cart);
                    em.merge(game);
                }
                cart.getGames().clear();
                cart.setTotalPrice(0);
                em.merge(cart);
                trans.commit();
                return cart;
            }catch(Exception e){
                logger.log(Level.WARNING, e.getMessage());
                trans.rollback();
                return null;
            } finally{
                em.close();
            }
        }
        else{
            em.close();
            return null;
        }
    }

    @Override
    public Cart remove(Long cartId, Long gameId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        Cart cart = em.find(Cart.class, cartId);
        Game game = em.find(Game.class, gameId);
        int gamePrice = game.isDiscount()?game.getDiscountPrice(): game.getInitialPrice(); 
        int cartPrice = cart.getTotalPrice() - gamePrice;
        if(cartPrice<0)
            cartPrice=0;
        try{
            trans.begin();
            cart.getGames().remove(game);
            cart.setTotalPrice(cartPrice);
            em.merge(cart);
            game.getCarts().remove(cart);
            em.merge(game);
            trans.commit();
            return cart;
        }catch(Exception e){
            logger.log(Level.WARNING, e.getMessage());
            trans.rollback();
            return null;
        } finally{
            em.close();
        }
    }

    @Override
    public Cart getCart(Long cartId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Cart cart = em.find(Cart.class, cartId); 
        em.close();
        return cart;
    }

    @Override
    public Cart getCartByUserId(Long userId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        User user = em.find(User.class, userId);
        String getCartByUserId = ""
                + "SELECT c "
                + "FROM Cart c "
                + "WHERE c.user = :user ";
        TypedQuery<Cart> query= em.createQuery(getCartByUserId, Cart.class);
        query.setParameter("user", user);
        Cart cart = null;
        try{
            cart = query.getSingleResult();
        }catch(NoResultException e){
            System.out.println(e);
        } finally{
            em.close();
        }
        return cart;
    }

    @Override
    public Cart addItem(Long cartId, Game game) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        Cart cart = em.find(Cart.class, cartId);
        int gamePrice = game.isDiscount()?game.getDiscountPrice(): game.getInitialPrice();  
        
        try{
            trans.begin();
            int totalPrice = cart.getTotalPrice() + gamePrice;
            if(totalPrice<0)
                totalPrice = 0;
            game.getCarts().add(cart);
            em.merge(game);
            cart.getGames().add(game);
            cart.setTotalPrice(totalPrice);
            em.merge(cart);
            trans.commit();
            return cart;
        } catch (Exception e){
            logger.warning(e.getMessage());
            trans.rollback();
            return null;
        }finally{
            em.close();
        }
    }

    @Override
    public Cart addItem(Long cartId, Long gameId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try{
            Game game = em.find(Game.class, gameId);
            Cart cart = em.find(Cart.class, cartId);
            if(cart.getGames().contains(game))
                return cart;
            return addItem(cartId,game);
        }finally{
            em.close();
        }
    }

    @Override
    public boolean createCart(Long userId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        User user = em.find(User.class, userId);
        Cart cart = null;
        if(user != null)
            cart = new Cart(0,user);
        try{
            trans.begin();
            em.persist(cart);
            user.setCart(cart);
            em.merge(user);
            trans.commit();
            return true;
        }catch(Exception e){
            logger.warning(e.getMessage());
            trans.rollback();
            return false;
        } finally{
            em.close();
        }
    }
}
