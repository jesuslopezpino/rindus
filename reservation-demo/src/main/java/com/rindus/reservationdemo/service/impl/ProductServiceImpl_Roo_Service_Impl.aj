// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.service.impl;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.repository.ProductRepository;
import com.rindus.reservationdemo.service.api.PricePerProductService;
import com.rindus.reservationdemo.service.api.StockService;
import com.rindus.reservationdemo.service.impl.ProductServiceImpl;
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

privileged aspect ProductServiceImpl_Roo_Service_Impl {
    
    declare @type: ProductServiceImpl: @Service;
    
    declare @type: ProductServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductRepository ProductServiceImpl.productRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PricePerProductService ProductServiceImpl.pricePerProductService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StockService ProductServiceImpl.stockService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productRepository
     * @param pricePerProductService
     * @param stockService
     */
    @Autowired
    public ProductServiceImpl.new(ProductRepository productRepository, @Lazy PricePerProductService pricePerProductService, @Lazy StockService stockService) {
        setProductRepository(productRepository);
        setPricePerProductService(pricePerProductService);
        setStockService(stockService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductRepository
     */
    public ProductRepository ProductServiceImpl.getProductRepository() {
        return productRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productRepository
     */
    public void ProductServiceImpl.setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PricePerProductService
     */
    public PricePerProductService ProductServiceImpl.getPricePerProductService() {
        return pricePerProductService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProductService
     */
    public void ProductServiceImpl.setPricePerProductService(PricePerProductService pricePerProductService) {
        this.pricePerProductService = pricePerProductService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StockService
     */
    public StockService ProductServiceImpl.getStockService() {
        return stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockService
     */
    public void ProductServiceImpl.setStockService(StockService stockService) {
        this.stockService = stockService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProductoToAdd
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.addToPreciosPorProducto(Product product, Iterable<Long> preciosPorProductoToAdd) {
        List<PricePerProduct> preciosPorProducto = getPricePerProductService().findAll(preciosPorProductoToAdd);
        product.addToPreciosPorProducto(preciosPorProducto);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToAdd
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.addToProductosStock(Product product, Iterable<Long> productosStockToAdd) {
        List<Stock> productosStock = getStockService().findAll(productosStockToAdd);
        product.addToProductosStock(productosStock);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProductoToRemove
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.removeFromPreciosPorProducto(Product product, Iterable<Long> preciosPorProductoToRemove) {
        List<PricePerProduct> preciosPorProducto = getPricePerProductService().findAll(preciosPorProductoToRemove);
        product.removeFromPreciosPorProducto(preciosPorProducto);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToRemove
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.removeFromProductosStock(Product product, Iterable<Long> productosStockToRemove) {
        List<Stock> productosStock = getStockService().findAll(productosStockToRemove);
        product.removeFromProductosStock(productosStock);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param preciosPorProducto
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.setPreciosPorProducto(Product product, Iterable<Long> preciosPorProducto) {
        List<PricePerProduct> items = getPricePerProductService().findAll(preciosPorProducto);
        List<PricePerProduct> currents = product.getPreciosPorProducto();
        Set<PricePerProduct> toRemove = new HashSet<PricePerProduct>();
        for (Iterator<PricePerProduct> iterator = currents.iterator(); iterator.hasNext();) {
            PricePerProduct nextPricePerProduct = iterator.next();
            if (items.contains(nextPricePerProduct)) {
                items.remove(nextPricePerProduct);
            } else {
                toRemove.add(nextPricePerProduct);
            }
        }
        product.removeFromPreciosPorProducto(toRemove);
        product.addToPreciosPorProducto(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        product.setVersion(product.getVersion() + 1);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStock
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.setProductosStock(Product product, Iterable<Long> productosStock) {
        List<Stock> items = getStockService().findAll(productosStock);
        List<Stock> currents = product.getProductosStock();
        Set<Stock> toRemove = new HashSet<Stock>();
        for (Iterator<Stock> iterator = currents.iterator(); iterator.hasNext();) {
            Stock nextStock = iterator.next();
            if (items.contains(nextStock)) {
                items.remove(nextStock);
            } else {
                toRemove.add(nextStock);
            }
        }
        product.removeFromProductosStock(toRemove);
        product.addToProductosStock(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        product.setVersion(product.getVersion() + 1);
        return getProductRepository().save(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     */
    @Transactional
    public void ProductServiceImpl.delete(Product product) {
        // Clear bidirectional one-to-many parent relationship with PricePerProduct
        for (PricePerProduct item : product.getPreciosPorProducto()) {
            item.setProducto(null);
        }
        
        // Clear bidirectional one-to-many parent relationship with Stock
        for (Stock item : product.getProductosStock()) {
            item.setProducto(null);
        }
        
        getProductRepository().delete(product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Product> ProductServiceImpl.save(Iterable<Product> entities) {
        return getProductRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void ProductServiceImpl.delete(Iterable<Long> ids) {
        List<Product> toDelete = getProductRepository().findAll(ids);
        getProductRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Product
     */
    @Transactional
    public Product ProductServiceImpl.save(Product entity) {
        return getProductRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Product
     */
    public Product ProductServiceImpl.findOne(Long id) {
        return getProductRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Product
     */
    public Product ProductServiceImpl.findOneForUpdate(Long id) {
        return getProductRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Product> ProductServiceImpl.findAll(Iterable<Long> ids) {
        return getProductRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Product> ProductServiceImpl.findAll() {
        return getProductRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long ProductServiceImpl.count() {
        return getProductRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getProductRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getProductRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Product> ProductServiceImpl.getEntityType() {
        return Product.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> ProductServiceImpl.getIdType() {
        return Long.class;
    }
    
}
