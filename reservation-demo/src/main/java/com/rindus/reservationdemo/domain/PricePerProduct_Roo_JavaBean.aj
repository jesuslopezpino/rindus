// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.domain;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Sell;
import java.util.Date;

privileged aspect PricePerProduct_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long PricePerProduct.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void PricePerProduct.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer PricePerProduct.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void PricePerProduct.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Product
     */
    public Product PricePerProduct.getProducto() {
        return this.producto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     */
    public void PricePerProduct.setProducto(Product producto) {
        this.producto = producto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long PricePerProduct.getPrice() {
        return this.price;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param price
     */
    public void PricePerProduct.setPrice(Long price) {
        this.price = price;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date PricePerProduct.getStartPrice() {
        return this.startPrice;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param startPrice
     */
    public void PricePerProduct.setStartPrice(Date startPrice) {
        this.startPrice = startPrice;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date PricePerProduct.getEndPrice() {
        return this.endPrice;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param endPrice
     */
    public void PricePerProduct.setEndPrice(Date endPrice) {
        this.endPrice = endPrice;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Sell
     */
    public Sell PricePerProduct.getSell() {
        return this.sell;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     */
    public void PricePerProduct.setSell(Sell sell) {
        this.sell = sell;
    }
    
}