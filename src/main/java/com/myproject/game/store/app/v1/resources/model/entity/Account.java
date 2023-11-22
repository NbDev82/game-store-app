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
@Table(name = "account")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Account implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "account_id")
    private Long accountId;
    
    @Column(name = "user_name", unique=true)
    private String userName;
    
    @Column(unique=true)
    private String email;
    
    @Column(name = "password_hash")
    private String passwordHash;
    
    @Column(name = "salt")
    private String salt;
    
    @Column(name = "create_at")
    private Timestamp createdAt;
    
    @Column(name = "last_login")
    private Timestamp lastLogin;
    
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
    
    @OneToMany(mappedBy = "account",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<PasswordResetRequest> passwordResetRequest;
    
    @ManyToMany
    @JoinTable(
        name = "acccount_role", 
        joinColumns = @JoinColumn(name = "account_id"), 
        inverseJoinColumns = @JoinColumn(name = "role_id"))
    private List<Role> roles;
}
