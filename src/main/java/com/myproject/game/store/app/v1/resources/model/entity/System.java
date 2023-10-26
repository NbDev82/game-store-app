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
@Table(name = "system")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class System {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "system_id")
    private Long systemId;
    
    @Column(name ="os_name", nullable = false)
    private String operatingSystemName;
    
    private String processor;
    
    private String memory;
    
    private String graphic;
    
    private String direct_x;
    
    private String network;
    
    private String storage;
    
    @OneToMany(mappedBy = "system",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Game> games;
}
