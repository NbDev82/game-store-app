/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import lombok.*;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "carts")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @JoinColumn(name = "cart_id")
    private Long cartId;
    
    @Column(name = "total_price")
    private int totalPrice;
    
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
    
    @ManyToMany(mappedBy = "carts", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Game> games;
    
    @OneToMany(mappedBy = "cart", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Order> orders;
}
