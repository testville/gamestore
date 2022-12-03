package com.gamestore.productservice.controllers.pub;

import com.gamestore.productservice.api.DetailedApi;
import com.gamestore.productservice.models.ProductDetailedInfoDTO;
import com.gamestore.productservice.services.ProductService;
import lombok.AllArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@AllArgsConstructor
@RestController
public class DetailedApiImpl implements DetailedApi {

    ProductService productService;

    @Override
    public ResponseEntity<ProductDetailedInfoDTO> detailedProductIdGet(Long productId) {
        var productDTO = productService.getById(productId);
        return productDTO
                .map(ResponseEntity::ok)
                .orElseGet(
                        () -> new ResponseEntity<>(HttpStatus.NOT_FOUND)
                );
    }
}
