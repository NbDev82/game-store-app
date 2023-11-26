/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.CategoryDAO;
import static com.myproject.game.store.app.v1.resources.dao.impl.GameDAOImpl.logger;
import com.myproject.game.store.app.v1.resources.model.entity.Category;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.util.logging.Logger;
import javax.persistence.EntityManager;

/**
 *
 * @author HP
 */
public class CategoryDAOImpl implements CategoryDAO{
    static final Logger logger
            = Logger.getLogger(
                    CategoryDAOImpl.class.getName());

    //    tim product thong qua id
    @Override
    public Category getCategoryById(Long categoryId)
    {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        try {
            Category cate = em.find(Category.class, categoryId);
            return cate;
        } catch (Exception e) {
            logger.warning(e.getMessage());
            return null;
        } finally {
            em.close();
        }
    }

    private void print(String categoryName) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
