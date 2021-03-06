// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.service.api.StockService;
import com.rindus.reservationdemo.web.StockDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect StockDeserializer_Roo_EntityDeserializer {
    
    declare @type: StockDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StockService
     */
    public StockService StockDeserializer.getStockService() {
        return stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockService
     */
    public void StockDeserializer.setStockService(StockService stockService) {
        this.stockService = stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService StockDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void StockDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Stock
     * @throws IOException
     */
    public Stock StockDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Stock stock = stockService.findOne(id);
        if (stock == null) {
            throw new NotFoundException("Stock not found");
        }
        return stock;
    }
    
}
