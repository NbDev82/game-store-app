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
import lombok.*;

@Entity
@Table(name = "game_imgs")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class GameImg implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;

    @Lob
    private byte[] img;
}

