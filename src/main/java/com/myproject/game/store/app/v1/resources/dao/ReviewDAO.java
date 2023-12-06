/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Account;
import com.myproject.game.store.app.v1.resources.model.entity.Game;
import com.myproject.game.store.app.v1.resources.model.entity.Review;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author HP
 */
public interface ReviewDAO {
//    public void addReview(Game game,Account acc,String Comment,int Score);
    public void addReview(Review review);
    public void addReview(Long userId, Long orderItemId, int Score, String Comment,Timestamp dateStatement);
}
