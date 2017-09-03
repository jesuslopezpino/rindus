package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.CustomerOrder;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CustomerOrdersItemSellListThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CustomerOrder.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "sellList")
@RooThymeleaf
public class CustomerOrdersItemSellListThymeleafController {
}
