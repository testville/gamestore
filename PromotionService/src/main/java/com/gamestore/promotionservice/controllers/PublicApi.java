package com.gamestore.promotionservice.controllers;

import com.gamestore.promotionservice.api.SearchApi;
import com.gamestore.promotionservice.models.SearchResponse;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PublicApi implements SearchApi {

    @Override
    public ResponseEntity<SearchResponse> searchGet(List<String> locations) {
        return SearchApi.super.searchGet(locations);
    }
}
