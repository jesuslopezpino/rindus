package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Reservation;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ReservationsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Reservation.class, type = ControllerType.COLLECTION)
@RooJSON
public class ReservationsCollectionJsonController {
}
