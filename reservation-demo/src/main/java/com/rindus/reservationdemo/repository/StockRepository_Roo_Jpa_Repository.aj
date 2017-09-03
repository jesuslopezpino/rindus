// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.repository.StockRepository;
import com.rindus.reservationdemo.repository.StockRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect StockRepository_Roo_Jpa_Repository {
    
    declare parents: StockRepository extends DetachableJpaRepository<Stock, Long>;
    
    declare parents: StockRepository extends StockRepositoryCustom;
    
    declare @type: StockRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param sell
     * @return Long
     */
    public abstract long StockRepository.countBySell(Sell sell);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @return Long
     */
    public abstract long StockRepository.countByProducto(Product producto);
    
}
