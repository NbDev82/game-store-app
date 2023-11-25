/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.CardDAO;
import com.myproject.game.store.app.v1.resources.model.entity.CardMethod;
import com.myproject.game.store.app.v1.resources.model.entity.User;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

/**
 *
 * @author Van Hoang
 */
public class CardDAOImpl implements CardDAO{
    Logger logger 
            = Logger.getLogger( 
                CartDAOImpl.class.getName());

    @Override
    public CardMethod persist(CardMethod card, User user) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try{
            trans.begin();
            em.persist(card);
            card.setUser(user);
            em.merge(card);
            trans.commit();
            return card;
        }catch(Exception e){
            trans.rollback();
            logger.info(e.getMessage());
            return null;
        }finally{
            em.close();
        }
    }

    @Override
    public CardMethod getCardById(Long cardId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        return em.find(CardMethod.class, cardId);
    }
}
