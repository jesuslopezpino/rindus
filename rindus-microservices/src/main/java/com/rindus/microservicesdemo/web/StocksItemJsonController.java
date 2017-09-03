package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Stock;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = StocksItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Stock.class, type = ControllerType.ITEM)
@RooJSON
public class StocksItemJsonController {
}
