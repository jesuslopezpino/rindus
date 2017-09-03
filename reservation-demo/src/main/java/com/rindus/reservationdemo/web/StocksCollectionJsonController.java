package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Stock;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = StocksCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Stock.class, type = ControllerType.COLLECTION)
@RooJSON
public class StocksCollectionJsonController {
}
