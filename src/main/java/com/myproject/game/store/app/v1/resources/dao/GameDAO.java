/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Game;
import java.util.List;

/**
 *
 * @author HP
 */
public interface GameDAO {
//    lay toan bo thong tin ve game thong qua  gameId 
    public Game getGameById(Long gameId);
}
