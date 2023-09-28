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
@Table(name = "category_items")
public class CategoryItem implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_items_id")
    private int categoryItemsId;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @ManyToOne
    @JoinColumn(name = "game_id")
    private Game game;
    
    public CategoryItem() {
    }
    
    public CategoryItem(int categoryItemsId, Category category, Game game) {
        this.categoryItemsId = categoryItemsId;
        this.category = category;
        this.game = game;
    }

    // Getter and setter methods

    public int getCategoryItemsId() {
        return categoryItemsId;
    }

    public void setCategoryItemsId(int categoryItemsId) {
        this.categoryItemsId = categoryItemsId;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Game getGame() {
        return game;
    }

    public void setGame(Game game) {
        this.game = game;
    }
}

