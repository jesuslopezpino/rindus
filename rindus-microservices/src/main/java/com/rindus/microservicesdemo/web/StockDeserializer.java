package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.service.api.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = StockDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Stock.class)
public class StockDeserializer extends JsonObjectDeserializer<Stock> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private StockService stockService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param stockService
     * @param conversionService
     */
    @Autowired
    public StockDeserializer(@Lazy StockService stockService, ConversionService conversionService) {
        this.stockService = stockService;
        this.conversionService = conversionService;
    }
}
