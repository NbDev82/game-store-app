/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import lombok.*;

/**
 *
 * @author Van Hoang
 */
@Entity
@Table(name = "language_support")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LanguageSupport implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "language_id")
    private Long languageId;
    
    @Column(name = "language_name")
    private String languageName;
    
    private String support;
    
    @ManyToMany(mappedBy = "languageSupports",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Game> games;
}
