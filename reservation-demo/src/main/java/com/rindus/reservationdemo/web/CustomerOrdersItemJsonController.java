package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.CustomerOrder;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = CustomerOrdersItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = CustomerOrder.class, type = ControllerType.ITEM)
@RooJSON
public class CustomerOrdersItemJsonController {
}
