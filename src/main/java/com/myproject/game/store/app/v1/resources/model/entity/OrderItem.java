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
@Table(name = "order_items")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class OrderItem implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "order_item_id")
    private Long orderItemId;

    @Column(name= "amount",nullable = false)
    private int amount;
    
    private String data;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "game_id", nullable =false)
    private Game game;
    
    @OneToMany(mappedBy = "orderItem",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Review> reviews;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "order_id")
    private Order order;
    
    public OrderItem(int amount, String data, Game game) {
        this.amount = amount;
        this.data = data;
        this.game = game;
    }
}

