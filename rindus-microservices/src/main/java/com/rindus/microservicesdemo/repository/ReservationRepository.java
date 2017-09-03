package com.rindus.microservicesdemo.repository;
import com.rindus.microservicesdemo.domain.Reservation;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ReservationRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Reservation.class)
public interface ReservationRepository {
}
