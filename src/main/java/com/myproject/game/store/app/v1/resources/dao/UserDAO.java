/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.User;

/**
 *
 * @author admin
 */
public interface UserDAO {
    boolean updateUser(User user);
    Boolean isValidPhoneNumber(String phoneNumber);
}
