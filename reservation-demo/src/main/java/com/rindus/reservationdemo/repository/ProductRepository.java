package com.rindus.reservationdemo.repository;
import com.rindus.reservationdemo.domain.Product;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ProductRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Product.class)
public interface ProductRepository {
}
