package com.gamestore.productservice.repositories;

import com.gamestore.productservice.models.*;
import com.querydsl.core.types.Projections;
import com.querydsl.core.types.dsl.Expressions;
import com.querydsl.core.types.dsl.NumberPath;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class TagRepository extends QuerydslRepositorySupport {

    public TagRepository() {
        super(Tag.class);
    }

    public List<TagDTO> getTop10Genres() {

        NumberPath<Long> aliasQuantity = Expressions.numberPath(Long.class, "productCount");

        return from(QTagSection.tagSection)
                .select(
                    Projections.bean(TagDTO.class, QTag.tag.name, QProduct.product.count().as(aliasQuantity))
                ).distinct()
                .join(QTag.tag).on(QTagSection.tagSection.eq(QTag.tag.tagSection))
                .leftJoin(QTagProductJoin.tagProductJoin).on(QTagProductJoin.tagProductJoin.tag.eq(QTag.tag))
                .leftJoin(QProduct.product).on(QProduct.product.eq(QTagProductJoin.tagProductJoin.product))
                .where(QTagSection.tagSection.name.eq("genre"))
                .groupBy(QTag.tag)
                .orderBy(aliasQuantity.desc())
                .limit(10)
                .fetch();
    }

    public Set<TagDTO> search(Optional<Set<String>> tagNames) {

        var innerTag = new QTag("innerTag");
        var innerProductTagJoin = new QTagProductJoin("innerProductTagJoin");
        NumberPath<Long> aliasQuantity = Expressions.numberPath(Long.class, "productCount");

        var q = from(QTag.tag)
                .select(
                        Projections.bean(TagDTO.class, innerTag.name, QProduct.product.count().as(aliasQuantity))
                ).distinct()
                .leftJoin(QTagProductJoin.tagProductJoin).on(QTagProductJoin.tagProductJoin.tag.eq(QTag.tag))
                .leftJoin(QProduct.product).on(QProduct.product.eq(QTagProductJoin.tagProductJoin.product))
                .leftJoin(innerProductTagJoin).on(innerProductTagJoin.product.eq(QProduct.product))
                .leftJoin(innerTag).on(innerTag.eq(innerProductTagJoin.tag))
                .leftJoin(QTagSection.tagSection).on(innerTag.tagSection.eq(QTagSection.tagSection));

        if (tagNames.isPresent() && !tagNames.get().isEmpty()) {
            q = q.where(
                    QTag.tag.name.in(tagNames.get())
                            .and(QTagSection.tagSection.name.eq("genre"))
            );
        } else {
            return new HashSet<>();
        }

        var result = q.groupBy(innerTag.name)
                .orderBy(aliasQuantity.desc())
                .limit(5)
                .fetch();

        return new HashSet<>(result);
    }


}
