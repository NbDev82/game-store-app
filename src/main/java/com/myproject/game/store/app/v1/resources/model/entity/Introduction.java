/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import javax.persistence.Embeddable;

/**
 *
 * @author Van Hoang
 */
@Embeddable
class Introduction {
    private String title;
    private String content;
    private String warning;
    private String award;
}
