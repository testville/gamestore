package com.gamestore.productservice.repositories;

import com.gamestore.productservice.models.TagSection;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TagSectionRepository extends JpaRepository<TagSection, Long> {

    @EntityGraph(attributePaths = {"tags"})
    List<TagSection> findByNameNot(String name);

}