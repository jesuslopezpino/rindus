package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Product;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = ProductsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, type = ControllerType.ITEM)
@RooJSON
public class ProductsItemJsonController {
}
