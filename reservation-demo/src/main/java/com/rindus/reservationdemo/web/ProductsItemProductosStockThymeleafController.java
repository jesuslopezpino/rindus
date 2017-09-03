package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Product;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ProductsItemProductosStockThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "productosStock")
@RooThymeleaf
public class ProductsItemProductosStockThymeleafController {
}
