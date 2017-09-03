// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.service.impl;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.repository.PricePerProductRepository;
import com.rindus.reservationdemo.service.impl.PricePerProductServiceImpl;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PricePerProductServiceImpl_Roo_Service_Impl {
    
    declare @type: PricePerProductServiceImpl: @Service;
    
    declare @type: PricePerProductServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PricePerProductRepository PricePerProductServiceImpl.pricePerProductRepository;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param pricePerProductRepository
     */
    @Autowired
    public PricePerProductServiceImpl.new(PricePerProductRepository pricePerProductRepository) {
        setPricePerProductRepository(pricePerProductRepository);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PricePerProductRepository
     */
    public PricePerProductRepository PricePerProductServiceImpl.getPricePerProductRepository() {
        return pricePerProductRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProductRepository
     */
    public void PricePerProductServiceImpl.setPricePerProductRepository(PricePerProductRepository pricePerProductRepository) {
        this.pricePerProductRepository = pricePerProductRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     */
    @Transactional
    public void PricePerProductServiceImpl.delete(PricePerProduct pricePerProduct) {
        // Clear bidirectional many-to-one child relationship with Product
        if (pricePerProduct.getProducto() != null) {
            pricePerProduct.getProducto().getPreciosPorProducto().remove(pricePerProduct);
        }
        
        getPricePerProductRepository().delete(pricePerProduct);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<PricePerProduct> PricePerProductServiceImpl.save(Iterable<PricePerProduct> entities) {
        return getPricePerProductRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PricePerProductServiceImpl.delete(Iterable<Long> ids) {
        List<PricePerProduct> toDelete = getPricePerProductRepository().findAll(ids);
        getPricePerProductRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return PricePerProduct
     */
    @Transactional
    public PricePerProduct PricePerProductServiceImpl.save(PricePerProduct entity) {
        return getPricePerProductRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return PricePerProduct
     */
    public PricePerProduct PricePerProductServiceImpl.findOne(Long id) {
        return getPricePerProductRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return PricePerProduct
     */
    public PricePerProduct PricePerProductServiceImpl.findOneForUpdate(Long id) {
        return getPricePerProductRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<PricePerProduct> PricePerProductServiceImpl.findAll(Iterable<Long> ids) {
        return getPricePerProductRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<PricePerProduct> PricePerProductServiceImpl.findAll() {
        return getPricePerProductRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PricePerProductServiceImpl.count() {
        return getPricePerProductRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPricePerProductRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getPricePerProductRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductServiceImpl.findByProducto(Product producto, GlobalSearch globalSearch, Pageable pageable) {
        return getPricePerProductRepository().findByProducto(producto, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductServiceImpl.findBySell(Sell sell, GlobalSearch globalSearch, Pageable pageable) {
        return getPricePerProductRepository().findBySell(sell, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @return Long
     */
    public long PricePerProductServiceImpl.countByProducto(Product producto) {
        return getPricePerProductRepository().countByProducto(producto);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     * @return Long
     */
    public long PricePerProductServiceImpl.countBySell(Sell sell) {
        return getPricePerProductRepository().countBySell(sell);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<PricePerProduct> PricePerProductServiceImpl.getEntityType() {
        return PricePerProduct.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PricePerProductServiceImpl.getIdType() {
        return Long.class;
    }
    
}