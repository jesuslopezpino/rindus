// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.service.api.ProductService;
import com.rindus.reservationdemo.web.ProductsCollectionThymeleafController;
import com.rindus.reservationdemo.web.ProductsItemThymeleafController;
import com.rindus.reservationdemo.web.ProductsItemThymeleafLinkFactory;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;

import java.util.Date;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

import com.rindus.reservationdemo.service.api.StockService;

privileged aspect ProductsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: ProductsItemThymeleafController: @Controller;
    
    declare @type: ProductsItemThymeleafController: @RequestMapping(value = "/products/{product}", name = "ProductsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ProductsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsItemThymeleafController> ProductsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ProductsItemThymeleafController.new(ProductService productService, StockService stockService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
	    	setProductService(productService);
	    	setStockService(stockService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(ProductsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(ProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ProductsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ProductsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsItemThymeleafController> ProductsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void ProductsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<ProductsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ProductsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Product
     */
    @ModelAttribute
    public Product ProductsItemThymeleafController.getProduct(@PathVariable("product") Long id, Locale locale, HttpMethod method) {
        Product product = null;
        if (HttpMethod.PUT.equals(method)) {
            product = productService.findOneForUpdate(id);
        } else {
            product = productService.findOne(id);
        }
        
        if (product == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Product", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return product;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView ProductsItemThymeleafController.show(@ModelAttribute Product product, Model model) {
        model.addAttribute("product", product);
        return new ModelAndView("products/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView ProductsItemThymeleafController.showInline(@ModelAttribute Product product, Model model) {
        model.addAttribute("product", product);
        return new ModelAndView("products/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("product")
    public void ProductsItemThymeleafController.initProductBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView ProductsItemThymeleafController.editForm(@ModelAttribute Product product, Model model) {
        populateForm(model);
        
        model.addAttribute("product", product);
        return new ModelAndView("products/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "increase", path = "/increase-form")
    public ModelAndView ProductsItemThymeleafController.increase(@Valid @ModelAttribute Product product, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        	System.out.println("INCREASE: "+product.getIncrease());
    		// Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("products/edit");
        }
        // Concurrency control
        Product existingProduct = getProductService().findOne(product.getId());
        if(product.getVersion() != existingProduct.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("product", product);
            model.addAttribute("concurrency", true);
            return new ModelAndView("products/edit");
        } else if(product.getVersion() != existingProduct.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("product", existingProduct);
            model.addAttribute("concurrency", false);
            return new ModelAndView("products/edit");
        } else if(product.getVersion() != existingProduct.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            product.setVersion(existingProduct.getVersion());
        }
        for (int i = 0; i < product.getIncrease(); i++) {
			Stock newItem = new Stock();
			newItem.setDateIn(new Date());
			newItem.setProducto(product);
			product.getProductosStock().add(newItem);
        }
        Product savedProduct = getProductService().save(product);
        UriComponents showURI = getItemLink().to(ProductsItemThymeleafLinkFactory.SHOW).with("product", savedProduct.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView ProductsItemThymeleafController.update(@Valid @ModelAttribute Product product, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("products/edit");
        }
        // Concurrency control
        Product existingProduct = getProductService().findOne(product.getId());
        if(product.getVersion() != existingProduct.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("product", product);
            model.addAttribute("concurrency", true);
            return new ModelAndView("products/edit");
        } else if(product.getVersion() != existingProduct.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("product", existingProduct);
            model.addAttribute("concurrency", false);
            return new ModelAndView("products/edit");
        } else if(product.getVersion() != existingProduct.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            product.setVersion(existingProduct.getVersion());
        }
        Product savedProduct = getProductService().save(product);
        UriComponents showURI = getItemLink().to(ProductsItemThymeleafLinkFactory.SHOW).with("product", savedProduct.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> ProductsItemThymeleafController.delete(@ModelAttribute Product product) {
        getProductService().delete(product);
        return ResponseEntity.ok().build();
    }
    
}
