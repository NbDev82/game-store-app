/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Category;

/**
 *
 * @author HP
 */
public interface CategoryDAO {
    //    lay toan bo thong tin ve game thong qua  gameId 
    public Category getCategoryById(Long categoryId);
}
