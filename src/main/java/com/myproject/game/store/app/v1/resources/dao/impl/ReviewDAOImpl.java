/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.OrderDAO;
import com.myproject.game.store.app.v1.resources.dao.ReviewDAO;
import static com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl.logger;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

/**
 *
 * @author HP
 */
public class ReviewDAOImpl implements ReviewDAO {

    static final Logger logger
            = Logger.getLogger(
                    GameDAOImpl.class.getName());

    @Override
    public void addReview(Review review){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try{
            em.persist(review);
            trans.commit();
        }catch(Exception ex){
//            logger.warning(ex.getMessage());
//            System.out.println(ex);
//            trans.rollback();
if (trans != null && trans.isActive()) {
                trans.rollback();
            }
        }finally {
            em.close();
        }
    }
//    public void addReview(Game game, Account acc, String Comment, int Score) {
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        EntityTransaction trans = em.getTransaction();
//
//        try {
//            Review review = new Review();
//            review.setUser(acc.getUser());
//            review.setScore(Score);
//            review.setComment(Comment);
//
//            OrderDAO orderDAO = new OrderDAOImpl();
//            List<Game> ListGameOrdered = orderDAO.getOrderedGame(acc.getAccountId());
//            OrderItem oi = orderDAO.getOrderItem(acc.getAccountId(), game.getGameId());
//            review.setOrderItem(oi);
//            for (Game g : ListGameOrdered) {
//                if (Objects.equals(g.getGameId(), game.getGameId())) {
//
//                    trans.begin();
//                    em.persist(review);
//                    trans.commit();
//                }
//            }
//        } catch (Exception ex) {
//            logger.warning(ex.getMessage());
//            System.out.println(ex);
//            trans.rollback();
//        } finally {
//            em.close();
//        }
//    }
}
