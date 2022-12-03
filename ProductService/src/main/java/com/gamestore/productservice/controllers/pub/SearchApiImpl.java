package com.gamestore.productservice.controllers.pub;

import com.gamestore.productservice.api.SearchApi;
import com.gamestore.productservice.models.SearchResultDTO;
import com.gamestore.productservice.models.SearchSortType;
import com.gamestore.productservice.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.*;

@AllArgsConstructor
@RestController
public class SearchApiImpl implements SearchApi {

    ProductService productService;

    @Override
    public ResponseEntity<SearchResultDTO> searchGet(
            Optional<Long> page,
            Optional<Set<String>> tags,
            Optional<BigDecimal> priceTo,
            Optional<SearchSortType> sort
    ) {
        return ResponseEntity.ok(productService.searchProducts(
                page,
                tags,
                priceTo,
                sort
        ));
    }
}
