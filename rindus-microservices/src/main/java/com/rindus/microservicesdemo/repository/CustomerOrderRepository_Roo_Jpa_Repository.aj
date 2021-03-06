// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.repository;

import com.rindus.microservicesdemo.domain.Customer;
import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.repository.CustomerOrderRepository;
import com.rindus.microservicesdemo.repository.CustomerOrderRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerOrderRepository_Roo_Jpa_Repository {
    
    declare parents: CustomerOrderRepository extends DetachableJpaRepository<CustomerOrder, Long>;
    
    declare parents: CustomerOrderRepository extends CustomerOrderRepositoryCustom;
    
    declare @type: CustomerOrderRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByCustomer(Customer customer);
    
}
