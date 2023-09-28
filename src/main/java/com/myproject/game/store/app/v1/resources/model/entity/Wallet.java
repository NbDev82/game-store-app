/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

/**
 *
 * @author Van Hoang
 */
import java.io.Serializable;
import javax.persistence.*;

@Entity
@Table(name = "wallets")
public class Wallet implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "wallet_id")
    private int walletId;

    @ManyToOne
    @JoinColumn(name = "wallet_user_id")
    private User walletUserId;

    private int balance;

    public Wallet() {
    }

    public Wallet(int walletId, User walletUserId, int balance) {
        this.walletId = walletId;
        this.walletUserId = walletUserId;
        this.balance = balance;
    }

    // Getter and setter methods

    public int getWalletId() {
        return walletId;
    }

    public void setWalletId(int walletId) {
        this.walletId = walletId;
    }

    public User getWalletUserId() {
        return walletUserId;
    }

    public void setWalletUserId(User walletUserId) {
        this.walletUserId = walletUserId;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }
}

