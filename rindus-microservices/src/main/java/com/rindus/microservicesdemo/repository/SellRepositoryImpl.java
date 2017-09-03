package com.rindus.microservicesdemo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.rindus.microservicesdemo.domain.Sell;

/**
 * = SellRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = SellRepositoryCustom.class)
public class SellRepositoryImpl extends QueryDslRepositorySupportExt<Sell> {

    /**
     * TODO Auto-generated constructor documentation
     */
    SellRepositoryImpl() {
        super(Sell.class);
    }
}