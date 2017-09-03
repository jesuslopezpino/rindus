package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Sell;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = SellsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Sell.class, type = ControllerType.ITEM)
@RooThymeleaf
public class SellsItemThymeleafController {
}
