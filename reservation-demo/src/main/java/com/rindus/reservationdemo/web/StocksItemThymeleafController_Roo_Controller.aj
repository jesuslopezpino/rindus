// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.service.api.StockService;
import com.rindus.reservationdemo.web.StocksItemThymeleafController;

privileged aspect StocksItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StockService StocksItemThymeleafController.stockService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StockService
     */
    public StockService StocksItemThymeleafController.getStockService() {
        return stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockService
     */
    public void StocksItemThymeleafController.setStockService(StockService stockService) {
        this.stockService = stockService;
    }
    
}
