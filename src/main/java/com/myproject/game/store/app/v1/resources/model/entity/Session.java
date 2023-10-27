/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.sql.Timestamp;
import javax.persistence.*;
import lombok.*;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "sessions")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Session {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "session_id")
    private Long sessionId;
    
    @Column(name = "created_at")
    private Timestamp createdAt;
    
    @Column(name = "last_activity")
    private Timestamp lastActivity;
    
    @Column(name = "expiration_time")
    private Timestamp expirationTime;
    
    @ManyToOne
    @JoinColumn(name = "account_id")
    private Account account;
}
