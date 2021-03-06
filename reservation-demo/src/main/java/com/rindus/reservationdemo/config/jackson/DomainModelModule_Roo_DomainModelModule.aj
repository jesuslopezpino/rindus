// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import com.rindus.reservationdemo.config.jackson.DomainModelModule;
import com.rindus.reservationdemo.domain.Customer;
import com.rindus.reservationdemo.domain.CustomerOrder;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Reservation;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.web.CustomerJsonMixin;
import com.rindus.reservationdemo.web.CustomerOrderJsonMixin;
import com.rindus.reservationdemo.web.ProductJsonMixin;
import com.rindus.reservationdemo.web.ReservationJsonMixin;
import com.rindus.reservationdemo.web.SellJsonMixin;
import com.rindus.reservationdemo.web.StockJsonMixin;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Customer.class, CustomerJsonMixin.class);
        setMixInAnnotation(CustomerOrder.class, CustomerOrderJsonMixin.class);
        setMixInAnnotation(Product.class, ProductJsonMixin.class);
        setMixInAnnotation(Reservation.class, ReservationJsonMixin.class);
        setMixInAnnotation(Sell.class, SellJsonMixin.class);
        setMixInAnnotation(Stock.class, StockJsonMixin.class);
    }

}
