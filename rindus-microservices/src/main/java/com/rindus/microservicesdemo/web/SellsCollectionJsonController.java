package com.rindus.microservicesdemo.web;
import com.rindus.microservicesdemo.domain.Sell;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;

/**
 * = SellsCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Sell.class, type = ControllerType.COLLECTION)
@RooJSON
public class SellsCollectionJsonController {
}
