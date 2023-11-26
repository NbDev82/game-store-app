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
    @Override
    public List<Game> getAllGames() {
        List<Game> games = null;
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String getAllGames = "SELECT g FROM Game g";
        TypedQuery<Game> query = em.createQuery(getAllGames, Game.class);
        try {
            games = query.getResultList();
        } catch (NoResultException e) {
            logger.warning(e.getMessage());
        } finally {
            em.close();
        }
        return games;
    }
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
}
