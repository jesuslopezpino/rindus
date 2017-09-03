package com.rindus.reservationdemo.repository;
import com.rindus.reservationdemo.domain.CustomerOrder;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = CustomerOrderRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = CustomerOrder.class)
public interface CustomerOrderRepository {
}
