/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.ReviewDAO;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import com.myproject.game.store.app.v1.resources.model.entity.User;
import java.sql.Timestamp;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

/**
 *
 * @author HP
 */
public class ReviewDAOImpl implements ReviewDAO {

    static final Logger logger
            = Logger.getLogger(
                    GameDAOImpl.class.getName());

    @Override
    public void addReview(Long userId, Long orderItemId, int Score, String Comment, Timestamp dateStatement) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        String sql
                = "insert into reviews(COMMENT,date_statement, SCORE,order_item_id,user_id)"
                + "values (?,?,?,?,?)";

        try {
            transaction.begin();
            em.createNativeQuery(sql)
                    .setParameter(1, Comment)
                    .setParameter(2, dateStatement)
                    .setParameter(3, Score)
                    .setParameter(4, orderItemId)
                    .setParameter(5, userId)
                    .executeUpdate();
            transaction.commit();
        } catch (NumberFormatException e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
        } finally {
            em.close();
        }
    }

    @Override
    public boolean add(Review review, OrderItem oi, Long userId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        User user = em.find(User.class, userId);
        
        try{
            trans.begin();
            
            em.persist(review);
            trans.commit();
            trans.begin();
            review.setOrderItem(oi);
            review.setUser(user);
            em.merge(review);
            trans.commit();
            return true;
        }catch(Exception e){
            logger.warning(e.getMessage());
            trans.rollback();
            return false;
        }finally{
            em.close();
        }
    }
}
