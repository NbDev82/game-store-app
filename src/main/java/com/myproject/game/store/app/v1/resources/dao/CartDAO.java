/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Game;

/**
 *
 * @author Van Hoang
 */
public interface CartDAO {
    public Cart removeAllItem(Long cartId);
    public Cart remove(Long cartId, Long gameId);
    public Cart getCart(Long id);
    public Cart getCartByUserId(Long userId);
    public boolean addItem(Long cartId, Game game);
    public boolean addItem(Long cartId, Long gameId);
    public Cart createCart(Long userId);
    
}
