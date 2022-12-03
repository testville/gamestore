package com.gamestore.productservice.mappers;

import com.gamestore.productservice.models.Tag;
import com.gamestore.productservice.models.TagDTO;
import org.mapstruct.InjectionStrategy;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

@Mapper(
        unmappedTargetPolicy = org.mapstruct.ReportingPolicy.IGNORE,
        componentModel = "spring",
        injectionStrategy = InjectionStrategy.CONSTRUCTOR
)
public interface TagMapper {

    TagDTO productToPreviewDTO(Tag tag);

    default String tagToString(Tag tag) {
        return tag.getName();
    }

    List<String> productToPreviewDTO(List<Tag> tag);

}
