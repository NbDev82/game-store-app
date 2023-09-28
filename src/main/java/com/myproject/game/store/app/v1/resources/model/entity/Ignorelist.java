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
@Table(name = "ignorelist")
public class Ignorelist implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    private String reason;

    public Ignorelist() {
    }

    public Ignorelist(User user, Game game, String reason) {
        this.user = user;
        this.game = game;
        this.reason = reason;
    }

    // Getter and setter methods

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}

