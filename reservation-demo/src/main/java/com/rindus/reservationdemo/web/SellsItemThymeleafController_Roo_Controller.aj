// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.service.api.SellService;
import com.rindus.reservationdemo.web.SellsItemThymeleafController;

privileged aspect SellsItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SellService SellsItemThymeleafController.sellService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SellService
     */
    public SellService SellsItemThymeleafController.getSellService() {
        return sellService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sellService
     */
    public void SellsItemThymeleafController.setSellService(SellService sellService) {
        this.sellService = sellService;
    }
    
}