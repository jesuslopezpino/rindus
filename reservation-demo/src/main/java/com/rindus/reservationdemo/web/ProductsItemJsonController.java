package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Product;

import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * = ProductsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@Controller
@RooController(entity = Product.class, type = ControllerType.ITEM)
@RooJSON
public class ProductsItemJsonController {
	
	/**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return ResponseEntity
     */
    @RequestMapping(name = "increase", path = "/increase", method = RequestMethod.GET)
    public @ResponseBody ResponseEntity<?> increase(@ModelAttribute Product product) {
//        getProductService().delete(product);
        return ResponseEntity.ok().build();
    }
}
