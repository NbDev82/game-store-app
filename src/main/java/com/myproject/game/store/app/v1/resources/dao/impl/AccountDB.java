/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 *
 * @author admin
 */
public class AccountDB {
    
    public static boolean validateUser(String userName, String providedPassword) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT a FROM Account a WHERE a.userName = :userName";
        TypedQuery<Account> q = em.createQuery(qString, Account.class);
        q.setParameter("userName", userName);
        
        try {
            Account account = (Account) q.getSingleResult();
            if (account != null) {
                String storedSalt = account.getSalt();
                String storedPasswordHash = account.getPasswordHash();
                
                String providedPasswordHash = hashPassword(providedPassword, storedSalt);

                if (storedPasswordHash.equals(providedPasswordHash)) {
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            em.close();
        }
        return false;
    }
    
    private static String hashPassword(String password, String salt) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(salt.getBytes());
            byte[] hashedPasswordBytes = md.digest(password.getBytes());
            return bytesToHex(hashedPasswordBytes);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static String bytesToHex(byte[] bytes) {
        StringBuilder hexString = new StringBuilder();
        for (byte b : bytes) {
            hexString.append(String.format("%02x", b));
        }
        return hexString.toString();
    }
}
