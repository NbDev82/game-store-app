/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Category;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.GameImg;
import java.util.List;

/**
 *
 * @author Van Hoang
 */
public interface HomeDAO {
    public List<Game> getAllGames();
    // truyen vao game_id lay ra toan bo img
//    public List<GameImg> getAllImgOfGameById(Long gameId);
//    // truyen vao game_id va lay ra cac category quan
//    public List<Category> getAllCategoryOfGameById(Long gameId);
    // Lay toan bo categories
    public List<Category> getAllCategories();
}
