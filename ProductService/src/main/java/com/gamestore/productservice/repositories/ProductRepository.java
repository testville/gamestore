package com.gamestore.productservice.repositories;

import com.gamestore.productservice.models.Product;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {


    @EntityGraph(attributePaths = {"priceCalendars", "multimedia", "tags"})
    public Optional<Product> findById(Long id);

}