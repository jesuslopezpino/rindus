// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.service.api;

import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.domain.Sell;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.service.api.SellService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect SellService_Roo_Service {
    
    declare parents: SellService extends EntityResolver<Sell, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Sell
     */
    public abstract Sell SellService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     */
    public abstract void SellService.delete(Sell sell);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Sell> SellService.save(Iterable<Sell> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void SellService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Sell
     */
    public abstract Sell SellService.save(Sell entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Sell
     */
    public abstract Sell SellService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Sell> SellService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Sell> SellService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long SellService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Sell> SellService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Sell> SellService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Sell> SellService.findByCustomerOrder(CustomerOrder customerOrder, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Sell> SellService.findByStockItem(Stock stockItem, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return Long
     */
    public abstract long SellService.countByCustomerOrder(CustomerOrder customerOrder);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @return Long
     */
    public abstract long SellService.countByStockItem(Stock stockItem);
    
}
