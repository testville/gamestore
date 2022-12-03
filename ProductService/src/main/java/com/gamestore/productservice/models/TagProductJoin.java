package com.gamestore.productservice.models;

import javax.persistence.*;
import java.io.Serializable;


@IdClass(TagProductJoinKey.class)
@Entity
@Table(name = "tag_product_join")
public class TagProductJoin {

    @Id
    @OneToOne(optional = false)
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Id
    @OneToOne(optional = false)
    @JoinColumn(name = "tag_id", nullable = false)
    private Tag tag;

}

class TagProductJoinKey implements Serializable {
    private Product product;
    private Tag tag;
}