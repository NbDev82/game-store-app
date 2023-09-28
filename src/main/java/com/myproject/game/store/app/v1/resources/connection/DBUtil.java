/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.connection;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Van Hoang
 */
public class DBUtil {
    private static final EntityManagerFactory emf =Persistence.createEntityManagerFactory("gameStorePU");
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
