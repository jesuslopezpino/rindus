package com.rindus.microservicesdemo.service.impl;
import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.service.api.StockService;

import io.springlets.data.domain.GlobalSearch;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;
import org.springframework.transaction.annotation.Transactional;

/**
 * = StockServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = StockService.class)
public class StockServiceImpl implements StockService {

	 @Transactional
		public List<Stock> increase(Product product, int num) {
			List<Stock> result = new ArrayList<Stock>();
			for (int i = 0; i < num; i++) {
				Stock stockItem = new Stock();
				stockItem.setProducto(product);
				stockItem.setDateIn(new Date());
				result.add(stockItem);
			}
//			return this.getStockRepository().save(result);
			return null;
		}
	    
	    @Transactional
	    public void decrease(Product product) {
//			Page<Stock> currentStockProduct = getStockRepositoryCustom().findByProducto(product, null, null);
			List<Stock> result = new ArrayList<Stock>();
			int discarted = 0;
//			for (Iterator iterator = currentStockProduct.iterator(); iterator.hasNext();) {
//				Stock stock = (Stock) iterator.next();
//				if(stock.getDateOut() == null) {
//					discarted++;
//					result.add(stock);
//				}
//			}
//			getStockRepository().delete(result);
	    }

}
