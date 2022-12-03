package com.gamestore.productservice.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.Instant;
import java.util.*;


@Getter
@Setter
@Entity
@ToString
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "price", nullable = false, precision = 19, scale = 2)
    private BigDecimal price;

    @Column(name = "is_free_to_play", nullable = false)
    private Boolean isFreeToPlay = false;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "release_date")
    private Instant releaseDate;

    @Column(name = "description", length = 5000, nullable = false)
    private String description;

    @Column(name = "publisher", nullable = false)
    private String publisher;

    @OneToMany(mappedBy = "product", cascade = CascadeType.PERSIST, orphanRemoval = true, fetch = FetchType.LAZY)
    @ToString.Exclude
    private List<PriceCalendar> priceCalendars = new ArrayList<>();

    @OneToMany(mappedBy = "product", cascade = CascadeType.PERSIST, orphanRemoval = true, fetch = FetchType.LAZY)
    @ToString.Exclude
    private Set<SystemRequirements> systemRequirements = new HashSet<>();

    @OneToMany(cascade = CascadeType.PERSIST, mappedBy = "product", orphanRemoval = true, fetch = FetchType.LAZY)
    @ToString.Exclude
    private Set<Multimedia> multimedia = new HashSet<>();

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    @JoinTable(name = "product_sale_join",
            joinColumns = @JoinColumn(name = "product_model_id"),
            inverseJoinColumns = @JoinColumn(name = "sale_models_id"))
    @ToString.Exclude
    private Set<Sale> sales = new HashSet<>();

    @ManyToMany(mappedBy = "products", fetch = FetchType.LAZY)
    @ToString.Exclude
    private Set<Tag> tags = new HashSet<>();

}