// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.service.api.ProductService;
import com.rindus.reservationdemo.web.ProductsItemJsonController;

privileged aspect ProductsItemJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductService ProductsItemJsonController.productService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductService
     */
    public ProductService ProductsItemJsonController.getProductService() {
        return productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productService
     */
    public void ProductsItemJsonController.setProductService(ProductService productService) {
        this.productService = productService;
    }
    
}
