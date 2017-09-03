package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.service.api.PricePerProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PricePerProductDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = PricePerProduct.class)
public class PricePerProductDeserializer extends JsonObjectDeserializer<PricePerProduct> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PricePerProductService pricePerProductService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param pricePerProductService
     * @param conversionService
     */
    @Autowired
    public PricePerProductDeserializer(@Lazy PricePerProductService pricePerProductService, ConversionService conversionService) {
        this.pricePerProductService = pricePerProductService;
        this.conversionService = conversionService;
    }
}
