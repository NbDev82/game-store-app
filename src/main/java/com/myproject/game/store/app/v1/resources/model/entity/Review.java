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
import java.sql.Timestamp;
import javax.persistence.*;
import lombok.*;

@Entity
@Table(name = "reviews")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "review_id")
    private Long reviewId;
    
    private int score;
    
    private String comment;

    @Column(name = "date_statement")
    private Timestamp dateStatement;
    
    @ManyToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name = "order_item_id")
    private OrderItem orderItem;
    
    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
}

