// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.QProduct;
import com.rindus.reservationdemo.repository.ProductRepositoryCustom;
import com.rindus.reservationdemo.repository.ProductRepositoryImpl;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: ProductRepositoryImpl implements ProductRepositoryCustom;
    
    declare @type: ProductRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String ProductRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QProduct product = QProduct.product;
        
        JPQLQuery<Product> query = from(product);
        
        Path<?>[] paths = new Path<?>[] {product.name,product.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, product.name)
			.map(DESCRIPTION, product.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, product);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Product> ProductRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QProduct product = QProduct.product;
        
        JPQLQuery<Product> query = from(product);
        
        Path<?>[] paths = new Path<?>[] {product.name,product.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(product.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, product.name)
			.map(DESCRIPTION, product.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, product);
    }
    
}
