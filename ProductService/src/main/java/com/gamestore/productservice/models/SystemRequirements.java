package com.gamestore.productservice.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Getter
@Setter
@ToString
@Entity
@Table(name = "system_requirements")
public class SystemRequirements {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "system", nullable = false)
    private String system;

    @Column(name = "processor", nullable = false)
    private String processor;

    @Column(name = "memory", nullable = false)
    private String memory;

    @Column(name = "graphics", nullable = false)
    private String graphics;

    @Column(name = "storage", nullable = false)
    private String storage;

    @Enumerated(EnumType.STRING)
    @Column(name = "requirements_type", nullable = false)
    private RequirementsType requirementsType;

    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id", nullable = false)
    @ToString.Exclude
    private Product product;

    public enum RequirementsType {
        MINIMAL,
        RECOMMENDED
    }

}