// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.rindus.microservicesdemo.domain.Reservation;
import com.rindus.microservicesdemo.service.api.ReservationService;
import com.rindus.microservicesdemo.web.ReservationsItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect ReservationsItemJsonController_Roo_JSON {
    
    declare @type: ReservationsItemJsonController: @RestController;
    
    declare @type: ReservationsItemJsonController: @RequestMapping(value = "/reservations/{reservation}", name = "ReservationsItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param reservationService
     */
    @Autowired
    public ReservationsItemJsonController.new(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Reservation
     */
    @ModelAttribute
    public Reservation ReservationsItemJsonController.getReservation(@PathVariable("reservation") Long id) {
        Reservation reservation = reservationService.findOne(id);
        if (reservation == null) {
            throw new NotFoundException(String.format("Reservation with identifier '%s' not found",id));
        }
        return reservation;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservation
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> ReservationsItemJsonController.show(@ModelAttribute Reservation reservation) {
        return ResponseEntity.ok(reservation);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservation
     * @return UriComponents
     */
    public static UriComponents ReservationsItemJsonController.showURI(Reservation reservation) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ReservationsItemJsonController.class).show(reservation))
            .buildAndExpand(reservation.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedReservation
     * @param reservation
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> ReservationsItemJsonController.update(@ModelAttribute Reservation storedReservation, @Valid @RequestBody Reservation reservation, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        reservation.setId(storedReservation.getId());
        getReservationService().save(reservation);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservation
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ReservationsItemJsonController.delete(@ModelAttribute Reservation reservation) {
        getReservationService().delete(reservation);
        return ResponseEntity.ok().build();
    }
    
}
