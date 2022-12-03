package com.gamestore.productservice.services;

import com.gamestore.productservice.mappers.ProductMapper;
import com.gamestore.productservice.models.ProductDetailedInfoDTO;
import com.gamestore.productservice.models.ProductPreviewListDTO;
import com.gamestore.productservice.models.SearchResultDTO;
import com.gamestore.productservice.models.SearchSortType;
import com.gamestore.productservice.repositories.ProductRepository;
import com.gamestore.productservice.repositories.ProductSearchRepository;
import com.gamestore.productservice.repositories.TagRepository;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.*;

@AllArgsConstructor
@Service
public class ProductService {

    ProductRepository productRepository;
    ProductSearchRepository productSearchRepository;
    TagRepository tagRepository;
    ProductMapper productMapper;

    @Transactional(readOnly = true)
    public SearchResultDTO searchProducts(
            Optional<Long> page,
            Optional<Set<String>> tags,
            Optional<BigDecimal> priceTo,
            Optional<SearchSortType> sort
    ) {
        var products = new ProductPreviewListDTO();
        products.setItems(
                productMapper.listProductToListPreviewDTO(
                        productSearchRepository.search(tags, priceTo, page, sort)
                )
        );
        var response = new SearchResultDTO();
        response.setCollection(products);
        response.setTags(tagRepository.search(tags));
        return response;
    }

    @Cacheable(value = "products", key = "#id")
    @Transactional(readOnly = true)
    public Optional<ProductDetailedInfoDTO> getById(Long id) {
        return productRepository
                .findById(id)
                .map(value -> productMapper.productToProductDetailedInfoDTO(
                value
        ));
    }
}
