// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.service.api.CustomerOrderService;
import com.rindus.reservationdemo.web.CustomerOrdersItemThymeleafController;

privileged aspect CustomerOrdersItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CustomerOrdersItemThymeleafController.customerOrderService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersItemThymeleafController.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CustomerOrdersItemThymeleafController.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
}