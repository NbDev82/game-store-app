/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Game;
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
    public void InsertGame(Long main_img_id,String game_name,String title,
            String content,String warning,String award,Timestamp release_date, int initial_price,
            boolean is_discount,int discount_price,String dev_name,String pub_name,int percent_pos,
            String global_review,int numb_review);
}
