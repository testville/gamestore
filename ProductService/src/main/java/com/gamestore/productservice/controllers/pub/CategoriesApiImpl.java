package com.gamestore.productservice.controllers.pub;

import com.gamestore.productservice.api.CategoriesApi;
import com.gamestore.productservice.models.TagSectionDTO;
import com.gamestore.productservice.services.TagSectionService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@AllArgsConstructor
@RestController
public class CategoriesApiImpl implements CategoriesApi {

    TagSectionService tagSectionService;

    @Override
    public ResponseEntity<List<TagSectionDTO>> categoriesGet() {
        return ResponseEntity.ok(
                tagSectionService.getCategories()
        );
    }
}
