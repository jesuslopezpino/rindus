// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.web.CustomerOrderDeserializer;
import com.rindus.microservicesdemo.web.SellJsonMixin;
import com.rindus.microservicesdemo.web.StockDeserializer;

privileged aspect SellJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CustomerOrderDeserializer.class)
    private CustomerOrder SellJsonMixin.customerOrder;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = StockDeserializer.class)
    private Stock SellJsonMixin.stockItem;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrder
     */
    public CustomerOrder SellJsonMixin.getCustomerOrder() {
        return customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     */
    public void SellJsonMixin.setCustomerOrder(CustomerOrder customerOrder) {
        this.customerOrder = customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Stock
     */
    public Stock SellJsonMixin.getStockItem() {
        return stockItem;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     */
    public void SellJsonMixin.setStockItem(Stock stockItem) {
        this.stockItem = stockItem;
    }
    
}