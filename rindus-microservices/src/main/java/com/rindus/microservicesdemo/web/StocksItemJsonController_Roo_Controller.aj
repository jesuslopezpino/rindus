// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.rindus.microservicesdemo.service.api.StockService;
import com.rindus.microservicesdemo.web.StocksItemJsonController;

privileged aspect StocksItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StockService StocksItemJsonController.stockService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StockService
     */
    public StockService StocksItemJsonController.getStockService() {
        return stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockService
     */
    public void StocksItemJsonController.setStockService(StockService stockService) {
        this.stockService = stockService;
    }
    
}
