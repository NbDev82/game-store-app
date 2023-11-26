/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.HomeDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Category;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.GameImg;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author Van Hoang
 */
public class HomeDAOImpl implements HomeDAO {

    static final Logger logger
            = Logger.getLogger(
                    HomeDAOImpl.class.getName());
// Lay toan bo thong tin toan bo game co so tu DB

    @Override
    public List<Game> getAllGames() {
        List<Game> games = null;
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String getAllGames = "SELECT g FROM Game g";
        TypedQuery<Game> query = em.createQuery(getAllGames, Game.class);
        try {
            games = query.getResultList();

//            Cap nhap list images cua tung game trong games
//            for (Game game : games) {
//                game.setGameimgs() = this.getAllImgOfGameById(game.gameId);
//                game.setCategories() = this.getAllCategoryOfGameById(game.gameId);
//            }
        } catch (NoResultException e) {
            logger.warning(e.getMessage());
        } finally {
            em.close();
        }
        return games;
    }

    // Lay toan bo categories
    @Override
    public List<Category> getAllCategories() {
        List<Category> categories = null;
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String getAllCategories = "SELECT g FROM Category g";
        TypedQuery<Category> query = em.createQuery(getAllCategories, Category.class);
        try {
            categories = query.getResultList();
        } catch (NoResultException e) {
            logger.warning(e.getMessage());
        } finally {
            em.close();
        }
        return categories;
    }
//   thong qua main_img_id lay duoc anh chinh 
//  truyen vao game_id va lay ra cac anh lien quan den game
//    
//    @Override
//    public List<GameImg> getAllImgOfGameById(Long gameId) {
//        List<GameImg> images = null;
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        String getAllImgOfGameById = "SELECT gi FROM GameImg gi WHERE gi.game.gameId = :gameId";
//        TypedQuery<GameImg> query = em.createQuery(getAllImgOfGameById, GameImg.class);
//        query.setParameter("gameId", gameId);
//        try {
//            images = query.getResultList();
//        } catch (NoResultException e) {
//            logger.warning(e.getMessage());
//        } finally {
//            em.close();
//        }
//        return images;
//    }
//    // truyen vao game_id va lay ra cac category quan
//
//    @Override
//    public List<Category> getAllCategoryOfGameById(Long gameId) {
//        List<Category> categories = null;
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        String getAllCategoryOfGameById = "SELECT g FROM Game g "
//                + "JOIN FETCH g.categories c "
//                + "WHERE g.gameId = :gameId";
//        TypedQuery<Category> query = em.createQuery(getAllCategoryOfGameById, Category.class);
//        query.setParameter("gameId", gameId);
//        try {
//            categories = query.getResultList();
//        } catch (NoResultException e) {
//            logger.warning(e.getMessage());
//        } finally {
//            em.close();
//        }
//        return categories;
//    }
    // truyen vao game_id va lay ra cac system lien quan
}
