package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.PricePerProduct;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = PricePerProductsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = PricePerProduct.class, type = ControllerType.ITEM)
@RooJSON
public class PricePerProductsItemJsonController {
}
