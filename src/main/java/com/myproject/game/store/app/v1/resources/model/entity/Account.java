/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.sql.Timestamp;
import java.util.List;
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
public class Account {
    @Id
    @Column(name = "account_id")
    private Long accountId;
    
    
    
    @Column(name = "user_name")
    private String userName;
    
    private String email;
    
    @Column(name = "password_hash")
    private String passwordHash;
    
    @Column(name = "salt")
    private String salt;
    
    @Column(name = "create_at")
    private Timestamp createdAt;
    
    @Column(name = "last_login")
    private Timestamp lastLogin;
    
    @OneToOne(mappedBy = "account")
    @JoinColumn(name = "user_id")
    private User user;
    
    @OneToMany(mappedBy = "account",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Session> sessions;
    
    @OneToMany(mappedBy = "account",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<PasswordResetRequest> passwordResetRequest;
    
    @ManyToMany
    @JoinTable(
        name = "Acccount_Roles", 
        joinColumns = @JoinColumn(name = "account_id"), 
        inverseJoinColumns = @JoinColumn(name = "game_id"))
    private List<Role> roles;
}
