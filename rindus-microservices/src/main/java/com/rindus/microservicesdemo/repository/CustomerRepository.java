package com.rindus.microservicesdemo.repository;
import com.rindus.microservicesdemo.domain.Customer;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = CustomerRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Customer.class)
public interface CustomerRepository {
}
