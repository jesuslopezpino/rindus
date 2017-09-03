package com.rindus.microservicesdemo.repository;
import com.rindus.microservicesdemo.domain.Stock;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = StockRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Stock.class)
public interface StockRepository {
}
