// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.repository;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.repository.PricePerProductRepositoryCustom;
import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect PricePerProductRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stockItem
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PricePerProduct> PricePerProductRepositoryCustom.findByStockItem(Stock stockItem, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PricePerProduct> PricePerProductRepositoryCustom.findByProducto(Product producto, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PricePerProduct> PricePerProductRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PricePerProduct> PricePerProductRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}
