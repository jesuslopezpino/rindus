// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.domain;

import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import java.util.List;

privileged aspect Product_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Product.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Product.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer Product.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Product.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Product.getPrice() {
        return this.price;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param price
     */
    public void Product.setPrice(Long price) {
        this.price = price;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Product.getName() {
        return this.name;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     */
    public void Product.setName(String name) {
        this.name = name;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Product.getDescription() {
        return this.description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param description
     */
    public void Product.setDescription(String description) {
        this.description = description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Stock> Product.getProductosStock() {
        return this.productosStock;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productosStock
     */
    public void Product.setProductosStock(List<Stock> productosStock) {
        this.productosStock = productosStock;
    }
    
}
