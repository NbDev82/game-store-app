/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao;

import com.myproject.game.store.app.v1.resources.model.entity.Account;


/**
 *
 * @author admin
 */
public interface AccountDAO {
    boolean validateAccount(String userName, String providedPassword);
    String hashPassword(String password, String salt);
    String generateSalt();
    boolean insertAccount(Account acc);
}
