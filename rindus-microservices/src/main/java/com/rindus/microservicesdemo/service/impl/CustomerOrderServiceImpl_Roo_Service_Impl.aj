// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.service.impl;

import com.rindus.microservicesdemo.domain.Customer;
import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.domain.Sell;
import com.rindus.microservicesdemo.repository.CustomerOrderRepository;
import com.rindus.microservicesdemo.service.api.SellService;
import com.rindus.microservicesdemo.service.impl.CustomerOrderServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerOrderServiceImpl_Roo_Service_Impl {
    
    declare @type: CustomerOrderServiceImpl: @Service;
    
    declare @type: CustomerOrderServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderRepository CustomerOrderServiceImpl.customerOrderRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SellService CustomerOrderServiceImpl.sellService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerOrderRepository
     * @param sellService
     */
    @Autowired
    public CustomerOrderServiceImpl.new(CustomerOrderRepository customerOrderRepository, @Lazy SellService sellService) {
        setCustomerOrderRepository(customerOrderRepository);
        setSellService(sellService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderRepository
     */
    public CustomerOrderRepository CustomerOrderServiceImpl.getCustomerOrderRepository() {
        return customerOrderRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderRepository
     */
    public void CustomerOrderServiceImpl.setCustomerOrderRepository(CustomerOrderRepository customerOrderRepository) {
        this.customerOrderRepository = customerOrderRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SellService
     */
    public SellService CustomerOrderServiceImpl.getSellService() {
        return sellService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sellService
     */
    public void CustomerOrderServiceImpl.setSellService(SellService sellService) {
        this.sellService = sellService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellListToAdd
     * @return CustomerOrder
     */
    @Transactional
    public CustomerOrder CustomerOrderServiceImpl.addToSellList(CustomerOrder customerOrder, Iterable<Long> sellListToAdd) {
        List<Sell> sellList = getSellService().findAll(sellListToAdd);
        customerOrder.addToSellList(sellList);
        return getCustomerOrderRepository().save(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellListToRemove
     * @return CustomerOrder
     */
    @Transactional
    public CustomerOrder CustomerOrderServiceImpl.removeFromSellList(CustomerOrder customerOrder, Iterable<Long> sellListToRemove) {
        List<Sell> sellList = getSellService().findAll(sellListToRemove);
        customerOrder.removeFromSellList(sellList);
        return getCustomerOrderRepository().save(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellList
     * @return CustomerOrder
     */
    @Transactional
    public CustomerOrder CustomerOrderServiceImpl.setSellList(CustomerOrder customerOrder, Iterable<Long> sellList) {
        List<Sell> items = getSellService().findAll(sellList);
        List<Sell> currents = customerOrder.getSellList();
        Set<Sell> toRemove = new HashSet<Sell>();
        for (Iterator<Sell> iterator = currents.iterator(); iterator.hasNext();) {
            Sell nextSell = iterator.next();
            if (items.contains(nextSell)) {
                items.remove(nextSell);
            } else {
                toRemove.add(nextSell);
            }
        }
        customerOrder.removeFromSellList(toRemove);
        customerOrder.addToSellList(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        customerOrder.setVersion(customerOrder.getVersion() + 1);
        return getCustomerOrderRepository().save(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     */
    @Transactional
    public void CustomerOrderServiceImpl.delete(CustomerOrder customerOrder) {
        // Clear bidirectional many-to-one child relationship with Customer
        if (customerOrder.getCustomer() != null) {
            customerOrder.getCustomer().getPedidos().remove(customerOrder);
        }
        
        // Clear bidirectional one-to-many parent relationship with Sell
        for (Sell item : customerOrder.getSellList()) {
            item.setCustomerOrder(null);
        }
        
        getCustomerOrderRepository().delete(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<CustomerOrder> CustomerOrderServiceImpl.save(Iterable<CustomerOrder> entities) {
        return getCustomerOrderRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void CustomerOrderServiceImpl.delete(Iterable<Long> ids) {
        List<CustomerOrder> toDelete = getCustomerOrderRepository().findAll(ids);
        getCustomerOrderRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return CustomerOrder
     */
    @Transactional
    public CustomerOrder CustomerOrderServiceImpl.save(CustomerOrder entity) {
        return getCustomerOrderRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CustomerOrder
     */
    public CustomerOrder CustomerOrderServiceImpl.findOne(Long id) {
        return getCustomerOrderRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CustomerOrder
     */
    public CustomerOrder CustomerOrderServiceImpl.findOneForUpdate(Long id) {
        return getCustomerOrderRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<CustomerOrder> CustomerOrderServiceImpl.findAll(Iterable<Long> ids) {
        return getCustomerOrderRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<CustomerOrder> CustomerOrderServiceImpl.findAll() {
        return getCustomerOrderRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CustomerOrderServiceImpl.count() {
        return getCustomerOrderRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerOrderRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerOrderRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<CustomerOrder> CustomerOrderServiceImpl.findByCustomer(Customer customer, GlobalSearch globalSearch, Pageable pageable) {
        return getCustomerOrderRepository().findByCustomer(customer, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return Long
     */
    public long CustomerOrderServiceImpl.countByCustomer(Customer customer) {
        return getCustomerOrderRepository().countByCustomer(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<CustomerOrder> CustomerOrderServiceImpl.getEntityType() {
        return CustomerOrder.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CustomerOrderServiceImpl.getIdType() {
        return Long.class;
    }
    
}
