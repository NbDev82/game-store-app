/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.game.store.app.v1.resources.model.entity;

/**
 *
 * @author Van Hoang
 */
import javax.persistence.*;
import lombok.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name = "games")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Game implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "game_id")
    private Long gameId;
    
    @Column(name = "main_img_id")
    private Long mainImgId;
    
    @Embedded
    private Introduction details;

    private String description;

    @Column(name = "release_date")
    private Timestamp releaseDate;

    @Column(name = "initial_price")
    private int initialPrice;

    @Column(name = "is_discount")
    private boolean isDiscount;

    @Column(name = "discount_price")
    private int discountPrice;
    
    @Column(name = "dev_name")
    private String devName;
    
    @Column(name = "pub_name")
    private String pubName;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
        name = "langguage_game", 
        joinColumns = @JoinColumn(name = "game_id"), 
        inverseJoinColumns = @JoinColumn(name = "lang_id"))
    private List<LanguageSupport> languageSupports;
    
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "system_id")
    private System system;
    
    @OneToMany(mappedBy = "game",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Review> reviews;
    
    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;
    
    @OneToMany(mappedBy = "game", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<GameImg> gameimgs;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
        name = "categoryId_gameId", 
        joinColumns = @JoinColumn(name = "user_id"), 
        inverseJoinColumns = @JoinColumn(name = "game_id"))
    private List<Category> categories;
    
    @ManyToMany(mappedBy= "library", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<User> library;
    
    @ManyToMany(mappedBy = "ignoreList")
    private List<User> ignoredByUsers;
    
    @ManyToMany(mappedBy = "wishList",fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<User> wishedUsers;
}

