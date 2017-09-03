// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Reservation;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.web.ProductDeserializer;
import com.rindus.reservationdemo.web.SellDeserializer;
import com.rindus.reservationdemo.web.StockJsonMixin;
import java.util.List;

privileged aspect StockJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private List<Reservation> StockJsonMixin.reservas;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ProductDeserializer.class)
    private Product StockJsonMixin.producto;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = SellDeserializer.class)
    private Sell StockJsonMixin.sell;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Reservation> StockJsonMixin.getReservas() {
        return reservas;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param reservas
     */
    public void StockJsonMixin.setReservas(List<Reservation> reservas) {
        this.reservas = reservas;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Product
     */
    public Product StockJsonMixin.getProducto() {
        return producto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     */
    public void StockJsonMixin.setProducto(Product producto) {
        this.producto = producto;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Sell
     */
    public Sell StockJsonMixin.getSell() {
        return sell;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     */
    public void StockJsonMixin.setSell(Sell sell) {
        this.sell = sell;
    }
    
}
