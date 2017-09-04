// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import com.rindus.reservationdemo.domain.CustomerOrder;
import com.rindus.reservationdemo.domain.QSell;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.repository.SellRepositoryCustom;
import com.rindus.reservationdemo.repository.SellRepositoryImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

privileged aspect SellRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: SellRepositoryImpl implements SellRepositoryCustom;
    
    declare @type: SellRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String SellRepositoryImpl.STOCK_ITEM = "stockItem";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String SellRepositoryImpl.CUSTOMER_ORDER = "customerOrder";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Sell> SellRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QSell sell = QSell.sell;
        
        JPQLQuery<Sell> query = from(sell);
        
        Path<?>[] paths = new Path<?>[] {sell.stockItem,sell.customerOrder};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(STOCK_ITEM, sell.stockItem)
			.map(CUSTOMER_ORDER, sell.customerOrder);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, sell);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Sell> SellRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QSell sell = QSell.sell;
        
        JPQLQuery<Sell> query = from(sell);
        
        Path<?>[] paths = new Path<?>[] {sell.stockItem,sell.customerOrder};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(sell.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(STOCK_ITEM, sell.stockItem)
			.map(CUSTOMER_ORDER, sell.customerOrder);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, sell);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Sell> SellRepositoryImpl.findByCustomerOrder(CustomerOrder customerOrder, GlobalSearch globalSearch, Pageable pageable) {
        
        QSell sell = QSell.sell;
        
        JPQLQuery<Sell> query = from(sell);
        
        Assert.notNull(customerOrder, "customerOrder is required");
        
        query.where(sell.customerOrder.eq(customerOrder));
        Path<?>[] paths = new Path<?>[] {sell.stockItem,sell.customerOrder};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(STOCK_ITEM, sell.stockItem)
			.map(CUSTOMER_ORDER, sell.customerOrder);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, sell);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Sell> SellRepositoryImpl.findByStockItem(Stock stockItem, GlobalSearch globalSearch, Pageable pageable) {
        
        QSell sell = QSell.sell;
        
        JPQLQuery<Sell> query = from(sell);
        
        Assert.notNull(stockItem, "stockItem is required");
        
        query.where(sell.stockItem.eq(stockItem));
        Path<?>[] paths = new Path<?>[] {sell.stockItem,sell.customerOrder};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(STOCK_ITEM, sell.stockItem)
			.map(CUSTOMER_ORDER, sell.customerOrder);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, sell);
    }
    
}