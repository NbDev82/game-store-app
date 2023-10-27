/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.util.List;
import javax.persistence.*;
import lombok.*;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "Language_Support")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LanguageSupport {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "language_id")
    private Long languageId;
    
    @Column(name = "language_name")
    private String name;
    
    @ManyToMany(mappedBy = "languageSupports",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Game> games;
}