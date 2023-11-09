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
import java.util.List;
import javax.persistence.*;
import lombok.*;

@MappedSuperclass
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentMethod implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_method_id")
    private Long paymentMethodId;

    @Column(name = "method_type")
    private boolean methodType;
    
    @Column(name = "security_code")
    private String securityCode;
    
    @Column(name = "is_verified")
    private boolean isVerified;
    
    
}
