/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.CardMethod;
import com.myproject.game.store.app.v1.resources.model.entity.User;

/**
 *
 * @author Van Hoang
 */
public interface CardDAO {
    CardMethod persist(CardMethod card, User user);

    public CardMethod getCardById(Long cardId);
}
