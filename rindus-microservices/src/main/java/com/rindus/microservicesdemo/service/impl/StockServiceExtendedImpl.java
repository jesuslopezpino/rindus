package com.rindus.microservicesdemo.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.repository.StockRepository;
import com.rindus.microservicesdemo.service.api.ReservationService;
import com.rindus.microservicesdemo.service.api.SellService;
import com.rindus.microservicesdemo.service.api.StockServiceExtended;

import io.springlets.data.domain.GlobalSearch;

public class StockServiceExtendedImpl extends StockServiceImpl implements StockServiceExtended {

	public StockServiceExtendedImpl(StockRepository arg0, ReservationService arg1, SellService arg2) {
		super(arg0, arg1, arg2);
	}

	@Transactional
	public List<Stock> increase(Product product, int num) {
		List<Stock> result = new ArrayList<Stock>();
		for (int i = 0; i < num; i++) {
			Stock stockItem = new Stock();
			stockItem.setProducto(product);
			stockItem.setDateIn(new Date());
			result.add(stockItem);
		}
		return this.getStockRepository().save(result);
	}

	@Transactional
	public int decrease(Product product, int num) {
		List<Stock> currentStockProduct = this.getStockRepository().findByProducto(product, null, null).getContent();
		List<Stock> result = new ArrayList<Stock>();
		int discarted = 0;
		for (Iterator<Stock> iterator = currentStockProduct.iterator(); iterator.hasNext();) {
			Stock stock = (Stock) iterator.next();
			if (stock.getDateOut() == null) {
				discarted++;
				result.add(stock);
			}
		}
		if(!result.isEmpty()) {
			this.getStockRepository().delete(result);
		}
		return discarted;
	}

}
