// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.repository.PricePerProductRepository;
import com.rindus.reservationdemo.repository.PricePerProductRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PricePerProductRepository_Roo_Jpa_Repository {
    
    declare parents: PricePerProductRepository extends DetachableJpaRepository<PricePerProduct, Long>;
    
    declare parents: PricePerProductRepository extends PricePerProductRepositoryCustom;
    
    declare @type: PricePerProductRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     * @return Long
     */
    public abstract long PricePerProductRepository.countBySell(Sell sell);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @return Long
     */
    public abstract long PricePerProductRepository.countByProducto(Product producto);
    
}