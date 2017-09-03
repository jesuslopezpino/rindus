package com.rindus.reservationdemo.repository;
import com.rindus.reservationdemo.domain.Customer;
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
