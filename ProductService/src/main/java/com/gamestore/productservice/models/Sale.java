package com.gamestore.productservice.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Optional;

@Getter
@Setter
@ToString
@Entity
@Table(name = "sale")
public class Sale {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "value", nullable = false)
    private Integer value;

    @Column(name = "active_from")
    private Instant activeFrom;

    @Column(name = "active_until")
    private Instant activeUntil;

    @Enumerated(EnumType.STRING)
    @Column(name = "sale_status")
    private SaleStatus saleStatus;

    @ManyToMany(mappedBy = "sales", fetch = FetchType.LAZY)
    @ToString.Exclude
    private Collection<Product> products = new ArrayList<>();

    public Optional<Instant> getActiveFrom() {
        return Optional.ofNullable(activeFrom);
    }

    public Optional<Instant> getActiveUntil() {
        return Optional.ofNullable(activeUntil);
    }

    public Optional<SaleStatus> getSaleStatus() {
        return Optional.ofNullable(saleStatus);
    }

    public enum SaleStatus {
        ACTIVE,
        INACTIVE
    }

}

