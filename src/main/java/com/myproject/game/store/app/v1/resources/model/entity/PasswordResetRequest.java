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
@Table(name = "account")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PasswordResetRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name= "request_id")
    private Long requestId;
    
    private String token;
    
    @Column(name = "expiration_date")
    private Timestamp expirationDate;
    
    @Column(name = "verified_code")
    private String verifiedCode;
    
    @Column(name="is_verified")
    private boolean isVerified;
    
    @ManyToOne
    @JoinColumn(name = "user_id")
    private Account account;
}
