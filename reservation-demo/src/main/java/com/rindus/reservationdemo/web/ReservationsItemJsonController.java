package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Reservation;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ReservationsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Reservation.class, type = ControllerType.ITEM)
@RooJSON
public class ReservationsItemJsonController {
}
