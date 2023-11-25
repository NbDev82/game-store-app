/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Order;

/**
 *
 * @author Van Hoang
 */
public interface OrderDAO {
    public Order createOrder(Cart cart);
    public Order getOrderByOrderId(Long orderId);
}
