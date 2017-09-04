// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.repository;

import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.repository.ProductRepository;
import com.rindus.microservicesdemo.repository.ProductRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductRepository_Roo_Jpa_Repository {
    
    declare parents: ProductRepository extends DetachableJpaRepository<Product, Long>;
    
    declare parents: ProductRepository extends ProductRepositoryCustom;
    
    declare @type: ProductRepository: @Transactional(readOnly = true);
    
}