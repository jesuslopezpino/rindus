// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.service.api.CustomerOrderService;
import com.rindus.reservationdemo.service.api.SellService;
import com.rindus.reservationdemo.web.CustomerOrdersItemSellListThymeleafController;

privileged aspect CustomerOrdersItemSellListThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CustomerOrdersItemSellListThymeleafController.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SellService CustomerOrdersItemSellListThymeleafController.sellService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersItemSellListThymeleafController.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CustomerOrdersItemSellListThymeleafController.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SellService
     */
    public SellService CustomerOrdersItemSellListThymeleafController.getSellService() {
        return sellService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sellService
     */
    public void CustomerOrdersItemSellListThymeleafController.setSellService(SellService sellService) {
        this.sellService = sellService;
    }
    
}