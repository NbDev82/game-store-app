/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.enums;

import lombok.Getter;

/**
 *
 * @author Van Hoang
 */
@Getter
public enum EMethod {
    VISA(1),
    MASTER_CARD(2),
    VTC(3),
    CREDIT_CARD(4),
    BANKING(5);

    private final int value;

    EMethod(int value) {
        this.value = value;
    }
}
