package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.PricePerProduct;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PricePerProductsCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = PricePerProduct.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class PricePerProductsCollectionThymeleafController {
}
