/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Cart;
import com.myproject.game.store.app.v1.resources.model.entity.Order;
import java.util.List;

/**
 *
 * @author Van Hoang
 */
public interface OrderDAO {
    public Order createOrder(Cart cart);
    public Order getOrderByOrderId(Long orderId);

    public List<Order> getAll();
    public List<Order> filterByStatus(List<Order> orders, boolean status);
    public Order getOrderBySecurityCode(String securityCode);
}
