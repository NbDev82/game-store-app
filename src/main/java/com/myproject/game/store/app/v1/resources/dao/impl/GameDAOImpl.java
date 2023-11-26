/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.GameDAO;
import static com.myproject.game.store.app.v1.resources.dao.impl.HomeDAOImpl.logger;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
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

    //    tim product thong qua id
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
}
