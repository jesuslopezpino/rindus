// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.service.api.StockService;
import com.rindus.reservationdemo.web.StocksCollectionThymeleafController;
import com.rindus.reservationdemo.web.StocksItemThymeleafController;
import com.rindus.reservationdemo.web.StocksItemThymeleafLinkFactory;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
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

privileged aspect StocksItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: StocksItemThymeleafController: @Controller;
    
    declare @type: StocksItemThymeleafController: @RequestMapping(value = "/stocks/{stock}", name = "StocksItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource StocksItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<StocksItemThymeleafController> StocksItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<StocksCollectionThymeleafController> StocksItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param stockService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public StocksItemThymeleafController.new(StockService stockService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setStockService(stockService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(StocksItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(StocksCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource StocksItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void StocksItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<StocksItemThymeleafController> StocksItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void StocksItemThymeleafController.setItemLink(MethodLinkBuilderFactory<StocksItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<StocksCollectionThymeleafController> StocksItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void StocksItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<StocksCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Stock
     */
    @ModelAttribute
    public Stock StocksItemThymeleafController.getStock(@PathVariable("stock") Long id, Locale locale, HttpMethod method) {
        Stock stock = null;
        if (HttpMethod.PUT.equals(method)) {
            stock = stockService.findOneForUpdate(id);
        } else {
            stock = stockService.findOne(id);
        }
        
        if (stock == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Stock", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return stock;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stock
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView StocksItemThymeleafController.show(@ModelAttribute Stock stock, Model model) {
        model.addAttribute("stock", stock);
        return new ModelAndView("stocks/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stock
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView StocksItemThymeleafController.showInline(@ModelAttribute Stock stock, Model model) {
        model.addAttribute("stock", stock);
        return new ModelAndView("stocks/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("stock")
    public void StocksItemThymeleafController.initStockBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void StocksItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("dateIn_date_format", "dd/MM/yyyy");
        model.addAttribute("dateOut_date_format", "dd/MM/yyyy hh:mm:ss");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void StocksItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stock
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView StocksItemThymeleafController.editForm(@ModelAttribute Stock stock, Model model) {
        populateForm(model);
        
        model.addAttribute("stock", stock);
        return new ModelAndView("stocks/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stock
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView StocksItemThymeleafController.update(@Valid @ModelAttribute Stock stock, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("stocks/edit");
        }
        // Concurrency control
        Stock existingStock = getStockService().findOne(stock.getId());
        if(stock.getVersion() != existingStock.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("stock", stock);
            model.addAttribute("concurrency", true);
            return new ModelAndView("stocks/edit");
        } else if(stock.getVersion() != existingStock.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("stock", existingStock);
            model.addAttribute("concurrency", false);
            return new ModelAndView("stocks/edit");
        } else if(stock.getVersion() != existingStock.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            stock.setVersion(existingStock.getVersion());
        }
        Stock savedStock = getStockService().save(stock);
        UriComponents showURI = getItemLink().to(StocksItemThymeleafLinkFactory.SHOW).with("stock", savedStock.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param stock
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> StocksItemThymeleafController.delete(@ModelAttribute Stock stock) {
        getStockService().delete(stock);
        return ResponseEntity.ok().build();
    }
    
}