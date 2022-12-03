package com.gamestore.productservice.mappers;

import com.gamestore.productservice.models.TagSection;
import com.gamestore.productservice.models.TagSectionDTO;
import org.mapstruct.InjectionStrategy;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(
        unmappedTargetPolicy = org.mapstruct.ReportingPolicy.IGNORE,
        componentModel = "spring",
        injectionStrategy = InjectionStrategy.CONSTRUCTOR
)
public interface TagSectionMapper {

    TagSectionDTO productToPreviewDTO(TagSection tagSection);

    List<TagSectionDTO> listProductToListPreviewDTO(List<TagSection> tagSection);
}
