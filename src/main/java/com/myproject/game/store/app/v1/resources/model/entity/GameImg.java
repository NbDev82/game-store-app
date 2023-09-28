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
@Table(name = "game_imgs")
public class GameImg implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    @Lob
    private byte[] img;

    public GameImg() {
    }

    public GameImg(Game game, byte[] img) {
        this.game = game;
        this.img = img;
    }

    // Getter and setter methods

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }
}

