// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.domain;

import com.rindus.reservationdemo.domain.Customer;
import com.rindus.reservationdemo.domain.CustomerOrder;
import com.rindus.reservationdemo.domain.Sell;
import java.util.Date;
import java.util.List;

privileged aspect CustomerOrder_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long CustomerOrder.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void CustomerOrder.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public Integer CustomerOrder.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void CustomerOrder.setVersion(Integer version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Customer
     */
    public Customer CustomerOrder.getCustomer() {
        return this.customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    public void CustomerOrder.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Date
     */
    public Date CustomerOrder.getOrderDate() {
        return this.orderDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDate
     */
    public void CustomerOrder.setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Sell> CustomerOrder.getSellList() {
        return this.sellList;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sellList
     */
    public void CustomerOrder.setSellList(List<Sell> sellList) {
        this.sellList = sellList;
    }
    
}
