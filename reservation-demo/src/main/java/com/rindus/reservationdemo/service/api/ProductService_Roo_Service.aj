// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.service.api;

import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.service.api.ProductService;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.format.EntityResolver;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ProductService_Roo_Service {
    
    declare parents: ProductService extends EntityResolver<Product, Long>;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Product
     */
    public abstract Product ProductService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     */
    public abstract void ProductService.delete(Product product);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Product> ProductService.save(Iterable<Product> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ProductService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Product
     */
    public abstract Product ProductService.save(Product entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Product
     */
    public abstract Product ProductService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Product> ProductService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Product> ProductService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ProductService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Product> ProductService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Product> ProductService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProductoToAdd
     * @return Product
     */
    public abstract Product ProductService.addToPreciosPorProducto(Product product, Iterable<Long> preciosPorProductoToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProductoToRemove
     * @return Product
     */
    public abstract Product ProductService.removeFromPreciosPorProducto(Product product, Iterable<Long> preciosPorProductoToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProducto
     * @return Product
     */
    public abstract Product ProductService.setPreciosPorProducto(Product product, Iterable<Long> preciosPorProducto);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToAdd
     * @return Product
     */
    public abstract Product ProductService.addToProductosStock(Product product, Iterable<Long> productosStockToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToRemove
     * @return Product
     */
    public abstract Product ProductService.removeFromProductosStock(Product product, Iterable<Long> productosStockToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStock
     * @return Product
     */
    public abstract Product ProductService.setProductosStock(Product product, Iterable<Long> productosStock);
    
}