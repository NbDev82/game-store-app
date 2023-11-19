/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.dao.impl;

import com.myproject.game.store.app.v1.resources.connection.DBUtil;
import com.myproject.game.store.app.v1.resources.dao.AccountDAO;
import com.myproject.game.store.app.v1.resources.model.entity.Account;
import java.security.*;
import java.util.*;
import java.util.logging.Logger;
import javax.persistence.*;

/**
 *
 * @author admin
 */
public class AccountDAOImpl implements AccountDAO{
    @Override
    public boolean validateAccount(String userName, String providedPassword) {
        Logger logger = Logger.getLogger(AccountDAOImpl.class.getName());
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT a FROM Account a WHERE a.userName = :userName";
        TypedQuery<Account> q = em.createQuery(qString, Account.class);
        q.setParameter("userName", userName);
        
        try {
            Account account = (Account) q.getSingleResult();
            if (account != null) {
                String storedSalt = account.getSalt();
                logger.info(storedSalt);
                String storedPasswordHash = account.getPasswordHash();
                
                String providedPasswordHash = hashPassword(providedPassword, storedSalt);
                System.out.println(providedPasswordHash);
                System.out.println(storedPasswordHash);
                logger.info(storedPasswordHash);
                logger.info(providedPasswordHash);
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
    
    @Override
    public String hashPassword(String password, String salt) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            md.update(salt.getBytes());
            byte[] hashedPasswordBytes = md.digest(password.getBytes());
            return bytesToHex(hashedPasswordBytes);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    private String bytesToHex(byte[] bytes) {
        StringBuilder hexString = new StringBuilder();
        for (byte b : bytes) {
            hexString.append(String.format("%02x", b));
        }
        return hexString.toString();
    }
    
    @Override
    public String generateSalt() {
        SecureRandom random = new SecureRandom();
        byte bytes[] = new byte[20];
        random.nextBytes(bytes);
        String salt = Base64.getEncoder().encodeToString(bytes);
        return salt;
    }

    @Override
    public boolean insertAccount(Account acc) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        
        try {
            trans.begin();
            em.persist(acc);
            trans.commit();   
            return true;
        } catch (Exception e) {
            trans.rollback();
            return false;
        } finally {
            em.close();
        }
    }
}
