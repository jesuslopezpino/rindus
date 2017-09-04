package com.rindus.microservicesdemo.service.api;

import java.util.List;

import org.springframework.roo.addon.layers.service.annotations.RooService;

import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;

@RooService(entity = Stock.class)
public interface StockServiceExtended extends StockService{
	
	public List<Stock> increase(Product product, int num);

	public int decrease(Product product, int num);
}
