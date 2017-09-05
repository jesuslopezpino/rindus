package com.rindus.reservationdemo.web;
import com.rindus.reservationdemo.domain.Product;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

/**
 * = ProductsItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ProductsItemThymeleafController {
	
	/**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/increase-form", name = "increaseForm")
    public ModelAndView increaseForm(@ModelAttribute Product product, Model model) {
        populateForm(model);
        
        model.addAttribute("product", product);
        return new ModelAndView("products/increase");
    }
}
