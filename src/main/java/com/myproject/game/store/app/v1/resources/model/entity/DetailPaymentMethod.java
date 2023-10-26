/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.sql.Timestamp;
import javax.persistence.*;

/**
 *
 * @author Van Hoang
 */
@Embeddable
public class DetailPaymentMethod {
    @Column(name = "card_number")
    private String numberOfCard;

    @Column(name = "security_code")
    private String securityCode;

    @Column(name = "expiration_date")
    private Timestamp expirationDate;
}
