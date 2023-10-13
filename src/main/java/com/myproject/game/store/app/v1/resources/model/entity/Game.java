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
import lombok.*;
import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Table(name = "games")
@Data
@NoArgsConstructor
@AllArgsConstructor
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
}

