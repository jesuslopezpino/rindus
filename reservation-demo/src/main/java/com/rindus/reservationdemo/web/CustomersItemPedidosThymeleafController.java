package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Customer;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = CustomersItemPedidosThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Customer.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "pedidos")
@RooThymeleaf
public class CustomersItemPedidosThymeleafController {
}
