/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import static com.myproject.game.store.app.v1.resources.dao.impl.HomeDAOImpl.logger;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.GameImg;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author HP
 */
public class GameDAOImpl implements GameDAO {

    static final Logger logger
            = Logger.getLogger(
                    GameDAOImpl.class.getName());

    @Override
    public Game getGameById(Long gameId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Game game = em.find(Game.class, gameId);
            return game;
        } catch (Exception e) {
            logger.warning(e.getMessage());
            return null;
        } finally {
            em.close();
        }
    }

    @Override
    public List<Game> getListGamesByString(String txtSearch) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            // Sử dụng JPQL để truy vấn từ cơ sở dữ liệu
            String jpql = "SELECT g FROM Game g WHERE g.gameName LIKE :txtSearch";
            TypedQuery<Game> query = em.createQuery(jpql, Game.class);
            query.setParameter("txtSearch", "%" + txtSearch + "%"); // Tìm kiếm theo phần của chuỗi

            // Thực hiện truy vấn và trả về kết quả
            List<Game> resultList = query.getResultList();
            return resultList;
        } finally {
            // Đảm bảo đóng EntityManager sau khi sử dụng
            em.close();
        }
    }

    @Override
    public void RemoveGameByGameId(Long gameId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();

        try {
            trans.begin();

            // Xóa các ràng buộc liên quan
            em.createQuery("DELETE FROM CategoryGame cg WHERE cg.game.gameId = :gameId")
                    .setParameter("gameId", gameId)
                    .executeUpdate();

            // Xóa game
            Game game = em.find(Game.class, gameId);
            em.remove(game);

            trans.commit();
        } catch (Exception e) {
            if (trans != null && trans.isActive()) {
                trans.rollback();
            }
        } finally {
            em.close();
        }
    }

    @Override
    public void InsertGame(Game game) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {

            em.persist(game);
//            game.setMainImgId(game.getGameId()*100+1);
//            em.merge(game);
            trans.commit();

        } catch (Exception ex) {
            logger.warning(ex.getMessage());
            System.out.println(ex);
            trans.rollback();
        } finally {
            em.close();
        }
    }

    @Override
    public void InsertImage(GameImg gameimg){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {

            em.persist(gameimg);
//            game.setMainImgId(game.getGameId()*100+1);
//            em.merge(game);
            trans.commit();

        } catch (Exception ex) {
            logger.warning(ex.getMessage());
            System.out.println(ex);
            trans.rollback();
        } finally {
            em.close();
        }
    }
    @Override
    public void UpdateGame(Game game){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        try {

            em.merge(game);
//            game.setMainImgId(game.getGameId()*100+1);
//            em.merge(game);
            trans.commit();

        } catch (Exception ex) {
            logger.warning(ex.getMessage());
            System.out.println(ex);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
