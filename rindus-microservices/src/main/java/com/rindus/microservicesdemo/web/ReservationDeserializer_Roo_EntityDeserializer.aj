// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.rindus.microservicesdemo.domain.Reservation;
import com.rindus.microservicesdemo.service.api.ReservationService;
import com.rindus.microservicesdemo.web.ReservationDeserializer;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect ReservationDeserializer_Roo_EntityDeserializer {
    
    declare @type: ReservationDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ReservationService
     */
    public ReservationService ReservationDeserializer.getReservationService() {
        return reservationService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservationService
     */
    public void ReservationDeserializer.setReservationService(ReservationService reservationService) {
        this.reservationService = reservationService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ReservationDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ReservationDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Reservation
     * @throws IOException
     */
    public Reservation ReservationDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Reservation reservation = reservationService.findOne(id);
        if (reservation == null) {
            throw new NotFoundException("Reservation not found");
        }
        return reservation;
    }
    
}
