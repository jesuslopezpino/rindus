// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.rindus.microservicesdemo.service.api.ReservationService;
import com.rindus.microservicesdemo.web.ReservationsItemJsonController;

privileged aspect ReservationsItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ReservationService ReservationsItemJsonController.reservationService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ReservationService
     */
    public ReservationService ReservationsItemJsonController.getReservationService() {
        return reservationService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservationService
     */
    public void ReservationsItemJsonController.setReservationService(ReservationService reservationService) {
        this.reservationService = reservationService;
    }
    
}
