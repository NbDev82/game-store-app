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
import java.util.List;
import lombok.*;

@Entity
@Table(name = "orders")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_id")
    private Long orderId;

    @Column(name= "amount",nullable = false)
    private int amount;
    
    private String data;
    
    @JoinColumn(nullable = false)
    private boolean status;
    
    @OneToMany
    @JoinColumn(name = "game_id", nullable =false)
    private List<Game> games;
    
    @ManyToOne
    @JoinColumn(name= "owner_id",nullable = false)
    private User owner_gameUser;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "transaction_id")
    private Transaction transaction;
}

