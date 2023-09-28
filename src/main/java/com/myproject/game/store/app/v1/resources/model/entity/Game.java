/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

/**
 *
 * @author Van Hoang
 */
import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name = "games")
public class Game implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "game_id")
    private int gameId;
    
    @Column(name = "game_name", length=50, nullable=false, unique=true)
    private String name;

    private String description;

    @Column(name = "release_date")
    private Timestamp releaseDate;

    private int platform;

    @Column(name = "initial_price")
    private int initialPrice;

    @Column(name = "is_discount")
    private boolean isDiscount;

    @Column(name = "discount_price")
    private int discountPrice;

    @Column(name = "owner")
    private int owner;

    public Game() {
    }

    public Game(int gameId, String name, String description, Timestamp releaseDate, int platform, int initialPrice, boolean isDiscount, int discountPrice, int owner) {
        this.gameId = gameId;
        this.name = name;
        this.description = description;
        this.releaseDate = releaseDate;
        this.platform = platform;
        this.initialPrice = initialPrice;
        this.isDiscount = isDiscount;
        this.discountPrice = discountPrice;
        this.owner = owner;
    }

    // Getter and setter methods

    public int getGameId() {
        return gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Timestamp releaseDate) {
        this.releaseDate = releaseDate;
    }

    public int getPlatform() {
        return platform;
    }

    public void setPlatform(int platform) {
        this.platform = platform;
    }

    public int getInitialPrice() {
        return initialPrice;
    }

    public void setInitialPrice(int initialPrice) {
        this.initialPrice = initialPrice;
    }

    public boolean isIsDiscount() {
        return isDiscount;
    }

    public void setIsDiscount(boolean isDiscount) {
        this.isDiscount = isDiscount;
    }

    public int getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(int discountPrice) {
        this.discountPrice = discountPrice;
    }

    public int getOwner() {
        return owner;
    }

    public void setOwner(int owner) {
        this.owner = owner;
    }
}

