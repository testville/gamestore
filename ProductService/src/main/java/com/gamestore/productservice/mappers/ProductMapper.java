package com.gamestore.productservice.mappers;

import com.gamestore.productservice.models.Product;
import com.gamestore.productservice.models.ProductDetailedInfoDTO;
import com.gamestore.productservice.models.ProductPreviewDTO;
import org.mapstruct.*;

import java.util.List;

@Mapper(
        uses = {TagMapper.class},
        unmappedTargetPolicy = org.mapstruct.ReportingPolicy.IGNORE,
        componentModel = "spring",
        injectionStrategy = InjectionStrategy.CONSTRUCTOR
)
public interface ProductMapper {

    @Mapping(source = "releaseDate", target = "releaseDate", dateFormat = "yyyy.MM.ddTHH.mm.ssZ")
    ProductPreviewDTO productToPreviewDTO(Product product);

    @Mapping(source = "releaseDate", target = "releaseDate", dateFormat = "yyyy.MM.ddTHH.mm.ssZ")
    @Mapping(target = "systemRequirements", ignore = true)
    ProductDetailedInfoDTO productToProductDetailedInfoDTO(Product product);

    @AfterMapping
    public default void treatAdditional(Product user, @MappingTarget ProductPreviewDTO productDTO) {
        if (user.getPriceCalendars() != null && !user.getPriceCalendars().isEmpty()) {
            productDTO.setPrice(user.getPriceCalendars().get(0).getPrice());
        } else {
            productDTO.setPrice(user.getPrice());
        }
    }

    List<ProductPreviewDTO> listProductToListPreviewDTO(List<Product> product);

}
