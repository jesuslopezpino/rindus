// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.repository;

import com.rindus.microservicesdemo.domain.Customer;
import com.rindus.microservicesdemo.repository.CustomerRepository;
import com.rindus.microservicesdemo.repository.CustomerRepositoryCustom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerRepository_Roo_Jpa_Repository {
    
    declare parents: CustomerRepository extends DetachableJpaRepository<Customer, Long>;
    
    declare parents: CustomerRepository extends CustomerRepositoryCustom;
    
    declare @type: CustomerRepository: @Transactional(readOnly = true);
    
}
