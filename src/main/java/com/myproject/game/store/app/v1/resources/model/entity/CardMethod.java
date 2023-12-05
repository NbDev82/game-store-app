/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import com.myproject.game.store.app.v1.resources.model.enums.EMethod;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.*;
import lombok.NoArgsConstructor;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "cards")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CardMethod extends PaymentMethod implements Serializable{
    @Column(name = "card_type")
    private EMethod cardType;
    
    @Column(name = "card_number")
    private String cardNumber;
 
    @Column(name = "expired_date")
    private Timestamp expiredDate;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id")
    private User user;
    
    @OneToMany(mappedBy = "card", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Order> orders;

    public CardMethod(EMethod cardType, String cardNumber, String securityCode, boolean verified, User user) {
            super.setMethodType(true);
            super.setSecurityCode(securityCode);
            super.setVerified(verified);
            this.cardNumber = cardNumber;
            this.cardType = cardType;
    }
}
