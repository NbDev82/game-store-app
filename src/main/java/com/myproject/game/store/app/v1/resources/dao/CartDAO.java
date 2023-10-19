/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.util.List;

/**
 *
 * @author Van Hoang
 */
public interface CartDAO {
    public List<Game> ShowOrderItemByUserId(int id);
    public boolean  deleteAllItemFromCartByUserId(int id);
    public boolean  remove(int id);
}
