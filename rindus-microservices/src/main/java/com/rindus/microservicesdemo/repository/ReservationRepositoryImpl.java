package com.rindus.microservicesdemo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.rindus.microservicesdemo.domain.Reservation;

/**
 * = ReservationRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = ReservationRepositoryCustom.class)
public class ReservationRepositoryImpl extends QueryDslRepositorySupportExt<Reservation> {

    /**
     * TODO Auto-generated constructor documentation
     */
    ReservationRepositoryImpl() {
        super(Reservation.class);
    }
}