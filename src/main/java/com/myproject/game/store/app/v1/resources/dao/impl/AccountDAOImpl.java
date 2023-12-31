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
import javax.persistence.*;
/**
 *
 * @author admin
 */
public class AccountDAOImpl implements AccountDAO{
    @Override
    public Account validateAccount(String userName, String providedPassword) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT a FROM Account a WHERE a.userName = :userName or a.email = :userName";
        TypedQuery<Account> q = em.createQuery(qString, Account.class);
        q.setParameter("userName", userName);
        
        try {
            Account account = (Account) q.getSingleResult();
            if (account != null) {
                String storedSalt = account.getSalt();
                String storedPasswordHash = account.getPasswordHash();
                
                String providedPasswordHash = hashPassword(providedPassword, storedSalt);
                if (storedPasswordHash.equals(providedPasswordHash)) {
                    return account;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            em.close();
        }
        return null;
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
    
    @Override
    public boolean updateAccount(Account account) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Account existingAccount = em.find(Account.class, account.getAccountId());
            if (existingAccount != null) {
                existingAccount.setUserName(account.getUserName());
                existingAccount.setEmail(account.getEmail());
                existingAccount.setPasswordHash(account.getPasswordHash());
                existingAccount.setSalt(account.getSalt());
                existingAccount.setCreatedAt(account.getCreatedAt());
                existingAccount.setLastLogin(account.getLastLogin());
                existingAccount.setUser(account.getUser());
                existingAccount.setPasswordResetRequest(account.getPasswordResetRequest());
                existingAccount.setRoles(account.getRoles());
                em.merge(existingAccount);
                trans.commit();
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            trans.rollback();
            return false;
        } finally {
            em.close();
        }
    }
    
    @Override
    public boolean emailExisted(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Query query = em.createQuery("SELECT a FROM Account a WHERE a.email = :email");
            query.setParameter("email", email);
            List<Account> accounts = query.getResultList();
            em.getTransaction().commit();
            return !accounts.isEmpty();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            return true;
        } finally {
            em.close();
        }
    }
    
    @Override
    public boolean usernameExisted(String userName) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Query query = em.createQuery("SELECT a FROM Account a WHERE a.userName = :userName");
            query.setParameter("userName", userName);
            List<Account> accounts = query.getResultList();
            em.getTransaction().commit();
            return !accounts.isEmpty();
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            return true;
        } finally {
            em.close();
        }
    }
    
    @Override
    public boolean validatePassword(String password) {
        if (password.length() < 9) {
            return false;
        } else if (!password.matches(".*\\d.*")) {
            return false;
        } else if (!password.matches(".*[A-Z].*")) {
            return false;
        }else if (!password.matches(".*\\W.*")) {
            return false;
        }

        return true;
    }

    @Override
    public Account getAccountById(Long accountId) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        Account acc = em.find(Account.class, accountId);
        em.close();
        return acc;
    }

    @Override
    public void changePassword(String email, String password) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        Account acc = findAccountByEmail(email);
        String passwordHash = hashPassword(password,acc.getSalt());
        try{
            trans.begin();
            acc.setPasswordHash(passwordHash);
            em.merge(acc);
            trans.commit();
        }catch(Exception e){
            trans.rollback();
        }finally{
            em.close();
        }
    }

    private Account findAccountByEmail(String email) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        try {
            trans.begin();
            Query query = em.createQuery("SELECT a FROM Account a WHERE a.email = :email");
            query.setParameter("email", email);
            Account account = (Account)query.getSingleResult();
            em.getTransaction().commit();
            return account;
        } catch (Exception e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            return null;
        } finally {
            em.close();
        }
    }
}
