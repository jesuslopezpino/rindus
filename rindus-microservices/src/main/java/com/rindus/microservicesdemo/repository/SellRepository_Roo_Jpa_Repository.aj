// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.repository;

import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.domain.Sell;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.repository.SellRepository;
import com.rindus.microservicesdemo.repository.SellRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SellRepository_Roo_Jpa_Repository {
    
    declare parents: SellRepository extends DetachableJpaRepository<Sell, Long>;
    
    declare parents: SellRepository extends SellRepositoryCustom;
    
    declare @type: SellRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return Long
     */
    public abstract long SellRepository.countByCustomerOrder(CustomerOrder customerOrder);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @return Long
     */
    public abstract long SellRepository.countByStockItem(Stock stockItem);
    
}
