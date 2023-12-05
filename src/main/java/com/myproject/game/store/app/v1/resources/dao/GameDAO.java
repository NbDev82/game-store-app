/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.GameImg;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author HP
 */
public interface GameDAO {
    public Game getGameById(Long gameId);
    public List<Game> getListGamesByString(String txtSearch);
    public void RemoveGameByGameId(Long gameId);
    public void InsertGame(Game game);
    public void InsertImage(GameImg gameimg);
//    public void InsertCategory(Game game, List<String> )
    public void UpdateGame(Game game);
}
