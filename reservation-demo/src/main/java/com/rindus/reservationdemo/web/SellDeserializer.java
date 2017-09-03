package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.service.api.SellService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = SellDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Sell.class)
public class SellDeserializer extends JsonObjectDeserializer<Sell> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private SellService sellService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param sellService
     * @param conversionService
     */
    @Autowired
    public SellDeserializer(@Lazy SellService sellService, ConversionService conversionService) {
        this.sellService = sellService;
        this.conversionService = conversionService;
    }
}
