// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.QPricePerProduct;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.repository.PricePerProductRepositoryCustom;
import com.rindus.reservationdemo.repository.PricePerProductRepositoryImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect PricePerProductRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: PricePerProductRepositoryImpl implements PricePerProductRepositoryCustom;
    
    declare @type: PricePerProductRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PricePerProductRepositoryImpl.PRODUCTO = "producto";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PricePerProductRepositoryImpl.STOCK_ITEM = "stockItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PricePerProductRepositoryImpl.PRICE = "price";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PricePerProductRepositoryImpl.START_PRICE = "startPrice";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String PricePerProductRepositoryImpl.END_PRICE = "endPrice";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QPricePerProduct pricePerProduct = QPricePerProduct.pricePerProduct;
        
        JPQLQuery<PricePerProduct> query = from(pricePerProduct);
        
        Path<?>[] paths = new Path<?>[] {pricePerProduct.producto,pricePerProduct.stockItem,pricePerProduct.price,pricePerProduct.startPrice,pricePerProduct.endPrice};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTO, pricePerProduct.producto)
			.map(STOCK_ITEM, pricePerProduct.stockItem)
			.map(PRICE, pricePerProduct.price)
			.map(START_PRICE, pricePerProduct.startPrice)
			.map(END_PRICE, pricePerProduct.endPrice);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pricePerProduct);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QPricePerProduct pricePerProduct = QPricePerProduct.pricePerProduct;
        
        JPQLQuery<PricePerProduct> query = from(pricePerProduct);
        
        Path<?>[] paths = new Path<?>[] {pricePerProduct.producto,pricePerProduct.stockItem,pricePerProduct.price,pricePerProduct.startPrice,pricePerProduct.endPrice};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(pricePerProduct.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTO, pricePerProduct.producto)
			.map(STOCK_ITEM, pricePerProduct.stockItem)
			.map(PRICE, pricePerProduct.price)
			.map(START_PRICE, pricePerProduct.startPrice)
			.map(END_PRICE, pricePerProduct.endPrice);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pricePerProduct);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductRepositoryImpl.findByProducto(Product producto, GlobalSearch globalSearch, Pageable pageable) {
        
        QPricePerProduct pricePerProduct = QPricePerProduct.pricePerProduct;
        
        JPQLQuery<PricePerProduct> query = from(pricePerProduct);
        
        Assert.notNull(producto, "producto is required");
        
        query.where(pricePerProduct.producto.eq(producto));
        Path<?>[] paths = new Path<?>[] {pricePerProduct.producto,pricePerProduct.stockItem,pricePerProduct.price,pricePerProduct.startPrice,pricePerProduct.endPrice};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTO, pricePerProduct.producto)
			.map(STOCK_ITEM, pricePerProduct.stockItem)
			.map(PRICE, pricePerProduct.price)
			.map(START_PRICE, pricePerProduct.startPrice)
			.map(END_PRICE, pricePerProduct.endPrice);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pricePerProduct);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<PricePerProduct> PricePerProductRepositoryImpl.findByStockItem(Stock stockItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QPricePerProduct pricePerProduct = QPricePerProduct.pricePerProduct;
        
        JPQLQuery<PricePerProduct> query = from(pricePerProduct);
        
        Assert.notNull(stockItem, "stockItem is required");
        
        query.where(pricePerProduct.stockItem.eq(stockItem));
        Path<?>[] paths = new Path<?>[] {pricePerProduct.producto,pricePerProduct.stockItem,pricePerProduct.price,pricePerProduct.startPrice,pricePerProduct.endPrice};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(PRODUCTO, pricePerProduct.producto)
			.map(STOCK_ITEM, pricePerProduct.stockItem)
			.map(PRICE, pricePerProduct.price)
			.map(START_PRICE, pricePerProduct.startPrice)
			.map(END_PRICE, pricePerProduct.endPrice);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, pricePerProduct);
    }
    
}
