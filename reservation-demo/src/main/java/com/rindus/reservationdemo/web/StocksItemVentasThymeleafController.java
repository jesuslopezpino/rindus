package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Stock;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = StocksItemVentasThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Stock.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "ventas")
@RooThymeleaf
public class StocksItemVentasThymeleafController {
}
