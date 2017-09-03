package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Reservation;
import com.rindus.reservationdemo.service.api.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ReservationDeserializer
 *
 * TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Reservation.class)
public class ReservationDeserializer extends JsonObjectDeserializer<Reservation> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ReservationService reservationService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param reservationService
     * @param conversionService
     */
    @Autowired
    public ReservationDeserializer(@Lazy ReservationService reservationService, ConversionService conversionService) {
        this.reservationService = reservationService;
        this.conversionService = conversionService;
    }
}
