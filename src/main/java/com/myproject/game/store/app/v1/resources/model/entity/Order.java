/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import javax.persistence.*;
import lombok.*;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "orders")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Order implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Long orderId;
    
    private boolean status;
    
    @Column(name = "total_amount", nullable = false)
    private int totalAmount;
    
    private int tax;
    
    @Column(name = "security_code")
    private String securityCode;
     
    private Timestamp created;
    
    private Timestamp due;
   
    private boolean expired;
    
    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "cart_id")
    private Cart cart;
    
    @OneToOne(mappedBy = "order", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Invoice invoice;
    
    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<OrderItem> orderItemss;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "wallet_id", nullable = false)
    private Wallet wallet;
    
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "card_id", nullable = false)
    private CardMethod card;
    
    public Order(boolean status, int totalAmount, int tax, String securityCode, Timestamp created, Timestamp due, boolean expired) {
        this.status = status;
        this.totalAmount = totalAmount;
        this.tax = tax;
        this.securityCode = securityCode;
        this.created = created;
        this.due = due;
        this.expired = expired;
    }   
}
