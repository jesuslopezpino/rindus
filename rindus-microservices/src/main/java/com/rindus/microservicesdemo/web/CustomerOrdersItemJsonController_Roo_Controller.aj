// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.rindus.microservicesdemo.service.api.CustomerOrderService;
import com.rindus.microservicesdemo.web.CustomerOrdersItemJsonController;

privileged aspect CustomerOrdersItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CustomerOrdersItemJsonController.customerOrderService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CustomerOrdersItemJsonController.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CustomerOrdersItemJsonController.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
}