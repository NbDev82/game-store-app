/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import com.myproject.game.store.app.v1.resources.model.enums.EMethod;
import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.*;

/**
 *
 * @author Van Hoang
 */
@Embeddable
public class DetailCardMethod implements Serializable{
    @Column(name = "card_type")
    private EMethod cardType;
    
    @Column(name = "card_number")
    private String numberOfCard; 

    @Column(name = "expiration_date")
    private Timestamp expirationDate;
}
