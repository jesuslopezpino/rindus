package com.rindus.reservationdemo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import com.rindus.reservationdemo.domain.PricePerProduct;

/**
 * = PricePerProductRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PricePerProductRepositoryCustom.class)
public class PricePerProductRepositoryImpl extends QueryDslRepositorySupportExt<PricePerProduct> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PricePerProductRepositoryImpl() {
        super(PricePerProduct.class);
    }
}