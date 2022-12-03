package com.gamestore.productservice.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;


@Getter
@Setter
@ToString
@Entity
@Table(name = "tag_section")
public class TagSection {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @OneToMany(mappedBy = "tagSection", cascade = CascadeType.PERSIST, orphanRemoval = true, fetch = FetchType.LAZY)
    @ToString.Exclude
    private Collection<Tag> tags = new ArrayList<>();

}