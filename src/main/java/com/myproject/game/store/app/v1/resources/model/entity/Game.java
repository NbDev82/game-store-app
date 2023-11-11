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
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Game implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "game_id")
    private Long gameId;
    
    @Column(name = "main_img_id")
    private Long mainImgId;
    
    @Column(name = "game_name")
    private String gameName;
    
    @Column(name = "title")
    private String title;
    
    @Column(name = "content")
    private String content;
    
    @Column(name = "warning")
    private String warning;
    
    @Column(name = "award")
    private String award;

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
    
    @Column(name = "percent_pos")
    private int percentPos;
    
    @Column(name = "global_review")
    private String globalReview;
    
    @Column(name = "numb_review")
    private int numbReview;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
        name = "language_game", 
        joinColumns = @JoinColumn(name = "game_id"), 
        inverseJoinColumns = @JoinColumn(name = "language_id"))
    private List<LanguageSupport> languageSupports;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(name = "system_game",
            joinColumns = @JoinColumn(name = "game_id"),
            inverseJoinColumns = @JoinColumn(name = "system_id"))
    private List<System> systems;
    
    @OneToMany(mappedBy = "game", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<GameImg> gameimgs;
    
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
        name = "category_game", 
        joinColumns = @JoinColumn(name = "game_id"), 
        inverseJoinColumns = @JoinColumn(name = "category_id"))
    private List<Category> categories;
    
    @OneToMany(mappedBy = "game", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Wish> wishes;
    
    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(
        name = "cart_game", 
        joinColumns = @JoinColumn(name = "game_id"), 
        inverseJoinColumns = @JoinColumn(name = "cart_id"))
    private List<Cart> carts;
    
    @OneToMany(mappedBy = "game", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<OrderItem> orderItems;
}

