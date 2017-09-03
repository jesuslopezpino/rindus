package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.CustomerOrder;
import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.service.impl.ProductServiceImpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

/**
 * = StocksItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Stock.class, type = ControllerType.COLLECTION)
@RooJSON
public class StocksItemJsonController {

	@RequestMapping(name = "increase" , method = RequestMethod.GET)
	public ModelAndView increase(Model model) {
		return new ModelAndView("stocks/increase");
	}

	/**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param result
     * @return ResponseEntity
     */
	@RequestMapping(name = "increase" , method = RequestMethod.POST)
    public ResponseEntity<?> increaseStock(@Valid @RequestBody Product product, @RequestParam(name = "numToAdd") Integer numToAdd, BindingResult result) {
        
        if (product.getId() != null || product.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        List<Stock> list = new ArrayList<Stock>();
        for (int i = 0; i < numToAdd; i++) {
			Stock stockItem = new Stock();
			stockItem.setDateIn(new Date());
			stockItem.setProducto(product);
			list.add(stockItem);
		}
//        CustomerOrder newCustomerOrder = getCustomerOrderService().save(customerOrder);
        UriComponents showURI = CustomerOrdersItemJsonController.showURI(newCustomerOrder);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
	
	@RequestMapping(name = "decrease" , method = RequestMethod.GET)
	public ModelAndView decrease(Model model) {
		return new ModelAndView("stocks/decrease");
	}

}
