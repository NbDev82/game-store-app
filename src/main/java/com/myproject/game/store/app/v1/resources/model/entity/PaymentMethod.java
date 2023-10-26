/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

/**
 *
 * @author Van Hoang
 */
import com.myproject.game.store.app.v1.resources.model.enums.EMethod;
import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import lombok.*;

@Entity
@Table(name = "payment_methods")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentMethod implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_method_id")
    private Long paymentMethodId;

    @Column(name = "method_type")
    private EMethod methodType;

    @Embedded
    private DetailPaymentMethod details;
    
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    
    @OneToMany(mappedBy = "paymentMethod", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Transaction> transactions;
}
