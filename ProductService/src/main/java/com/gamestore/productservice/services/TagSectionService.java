package com.gamestore.productservice.services;

import com.gamestore.productservice.mappers.TagSectionMapper;
import com.gamestore.productservice.models.TagSectionDTO;
import com.gamestore.productservice.repositories.TagRepository;
import com.gamestore.productservice.repositories.TagSectionRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@AllArgsConstructor
@Service
public class TagSectionService {

    TagSectionRepository tagSectionRepository;
    TagRepository tagRepository;
    TagSectionMapper tagSectionMapper;

    @Transactional(readOnly = true)
    public List<TagSectionDTO> getCategories() {
        var categories = tagSectionMapper.listProductToListPreviewDTO(
                tagSectionRepository.findByNameNot("genre")
        );
        var genreTags = tagRepository.getTop10Genres();
        categories.add(
                new TagSectionDTO()
                        .name("genre")
                        .tags(genreTags)
        );
        return categories;
    }
}
