package com.gamestore.productservice.repositories;

import com.gamestore.productservice.models.*;
import com.querydsl.core.types.OrderSpecifier;
import org.springframework.data.jpa.repository.support.QuerydslRepositorySupport;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.time.Instant;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public class ProductSearchRepository extends QuerydslRepositorySupport {

    public ProductSearchRepository() {
        super(Product.class);
    }

    public List<Product> search(
            Optional<Set<String>> tags,
            Optional<BigDecimal> priceTo,
            Optional<Long> page,
            Optional<SearchSortType> order
    ) {
        Optional<OrderSpecifier[]> orderSpecifiers = getOrderSpecifier(order);

        var now = Instant.now();
        var whereP = QPriceCalendar.priceCalendar.activeFrom.lt(now)
                .and(QPriceCalendar.priceCalendar.activeUntil.gt(now))
                .or(QProduct.product.price.isNotNull());

        if (tags.isPresent() && !tags.get().isEmpty()) {
            whereP = whereP.and(QTag.tag.name.in(tags.get()));
        }

        if (priceTo.isPresent()) {
            whereP = whereP.and(
                    QPriceCalendar.priceCalendar.price.lt(priceTo.get())
                            .or(QProduct.product.price.lt(priceTo.get()))
            );
        }

        var q = from(QTag.tag)
                .select(QProduct.product).distinct()
                .innerJoin(QTagProductJoin.tagProductJoin).on(QTag.tag.eq(QTagProductJoin.tagProductJoin.tag))
                .innerJoin(QProduct.product).on(QProduct.product.eq(QTagProductJoin.tagProductJoin.product))
                .leftJoin(QProduct.product.priceCalendars, QPriceCalendar.priceCalendar)
                .leftJoin(QProduct.product.multimedia, QMultimedia.multimedia)
                .where(whereP);

        if (orderSpecifiers.isPresent()) {
            q = q.orderBy(orderSpecifiers.get());
        }

        q = q.offset(20 * page.orElse(0L))
                .limit(20);


        return q.fetch();
    }

    Optional<OrderSpecifier[]> getOrderSpecifier(Optional<SearchSortType> order) {
        OrderSpecifier[] orderSpecifier = null;
        if (order.isPresent()) {
            orderSpecifier = switch (order.get()) {
                case PRICE -> new OrderSpecifier[] {
                        QPriceCalendar.priceCalendar.price.asc(),
                        QProduct.product.price.asc()
                };
                case RELEVANCE -> null;
                case RELEASE_DATE -> new OrderSpecifier[] {
                        QProduct.product.releaseDate.asc()
                };
            };
        }
        return Optional.ofNullable(orderSpecifier);
    }
}