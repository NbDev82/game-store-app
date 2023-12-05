/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.ReviewDAO;
import static com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl.logger;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.OrderItem;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import java.sql.Timestamp;
import java.util.List;
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
            logger.warning(ex.getMessage());
            System.out.println(ex);
            trans.rollback();
        }finally {
            em.close();
        }
    }
//    @Override
//    public void addReview(Account account, Game game, int score, String comment, Timestamp dateStatement) {
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        try {
//            EntityTransaction trans = em.getTransaction();
//            trans.begin();
//            if (hasPurchasedGame(account, game) ){
//                
//                Review review = new Review();
//                review.setComment(comment);
//                review.setScore(score);
//                review.setDateStatement(dateStatement);
//                
//                OrderItem orderItem  = getOrderItemByUserAndGame(account, game);
//                if(orderItem!=null){
//                    review.setOrderItem(orderItem);
//                    em.persist(review);
//                    em.getTransaction().commit();
//                }
//                else{
//                    System.out.print("User did not buy game");
//                    logger.warning("User did not buy game");
//                }
//            }
//        } catch (Exception e) {
//            logger.warning(e.getMessage());
//        } finally {
//            em.close();
//        }
//    }
//
//    private boolean hasPurchasedGame(Account account, Game game) {
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        String queryStr = "SELECT COUNT(oi) FROM OrderItem oi "
//                + "WHERE oi.game = :game AND oi.order.cart.user.account = :account";
//
//        Query query = em.createQuery(queryStr)
//                .setParameter("game", game)
//                .setParameter("account", account);
//
//        Long count = (Long) query.getSingleResult();
//        em.close(); // Đóng EntityManager sau khi sử dụng
//
//        return count > 0;
//    }
//
//    private OrderItem getOrderItemByUserAndGame(Account account, Game game) {
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        String queryStr = "SELECT oi FROM OrderItem oi "
//                + "WHERE oi.game = :game AND oi.order.cart.user.account = :account AND oi.order.status = true";
//
//        Query query = em.createQuery(queryStr, OrderItem.class)
//                .setParameter("game", game)
//                .setParameter("account", account);
//
//        List<OrderItem> orderItems = query.getResultList();
//
//        // Trả về OrderItem đầu tiên nếu có
//        return orderItems.isEmpty() ? null : orderItems.get(0);
//    }
}
