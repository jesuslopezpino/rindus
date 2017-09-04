package com.rindus.microservicesdemo.service.api;
import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;

import java.util.List;

import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = StockService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Stock.class)
public interface StockService {
	
	public List<Stock> increase(Product product, int num);

	public int decrease(Product product, int num);
}
