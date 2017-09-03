package com.rindus.reservationdemo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.rindus.reservationdemo.domain.Stock;

/**
 * = StockRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = StockRepositoryCustom.class)
public class StockRepositoryImpl extends QueryDslRepositorySupportExt<Stock> {

    /**
     * TODO Auto-generated constructor documentation
     */
    StockRepositoryImpl() {
        super(Stock.class);
    }
}