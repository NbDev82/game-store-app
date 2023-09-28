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
import javax.persistence.*;

@Entity
@Table(name = "payment_methods")
public class PaymentMethod implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "payment_methods_id")
    private int paymentMethodsId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "method_type")
    private int methodType;

    private String details;

    public PaymentMethod() {
    }

    public PaymentMethod(int paymentMethodsId, User user, int methodType, String details) {
        this.paymentMethodsId = paymentMethodsId;
        this.user = user;
        this.methodType = methodType;
        this.details = details;
    }

    // Getter and setter methods

    public int getPaymentMethodsId() {
        return paymentMethodsId;
    }

    public void setPaymentMethodsId(int paymentMethodsId) {
        this.paymentMethodsId = paymentMethodsId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getMethodType() {
        return methodType;
    }

    public void setMethodType(int methodType) {
        this.methodType = methodType;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
