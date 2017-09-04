package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Product;
import com.rindus.microservicesdemo.domain.Stock;
import com.rindus.microservicesdemo.service.api.StockServiceExtended;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * = StocksCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Stock.class, type = ControllerType.COLLECTION)
@RooJSON
public class StocksCollectionJsonController {
	
	@Autowired
	StockServiceExtended stockServiceExtended; 
	
	@RequestMapping(value = "/test")
	public String test() {
		return "{ \"hola\": \"ey\" }";
	}

	@RequestMapping(value = "/increase")
	public String increase(@Valid Product product, int num) {
		String result = "{ \"increased\" : \"";
		List<Stock> increasedList = this.stockServiceExtended.increase(product, num);
		int increased = increasedList.size();
		result += increased  + "\" }";
		return result;
	}

	@RequestMapping(value = "/decrease")
	public String decrease(@Valid Product product, int num) {
		String result = "{ \"decreased\" : \"";
		int decreased = this.stockServiceExtended.decrease(product, num);
		result += decreased + "\" }";
		return result;
	}

}
