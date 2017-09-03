// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.PricePerProduct;
import com.rindus.reservationdemo.service.api.PricePerProductService;
import com.rindus.reservationdemo.web.PricePerProductsCollectionThymeleafController;
import com.rindus.reservationdemo.web.PricePerProductsItemThymeleafController;
import com.rindus.reservationdemo.web.PricePerProductsItemThymeleafLinkFactory;
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

privileged aspect PricePerProductsItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: PricePerProductsItemThymeleafController: @Controller;
    
    declare @type: PricePerProductsItemThymeleafController: @RequestMapping(value = "/priceperproducts/{pricePerProduct}", name = "PricePerProductsItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource PricePerProductsItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PricePerProductsItemThymeleafController> PricePerProductsItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PricePerProductsCollectionThymeleafController> PricePerProductsItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param pricePerProductService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public PricePerProductsItemThymeleafController.new(PricePerProductService pricePerProductService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setPricePerProductService(pricePerProductService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(PricePerProductsItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(PricePerProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource PricePerProductsItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void PricePerProductsItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PricePerProductsItemThymeleafController> PricePerProductsItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void PricePerProductsItemThymeleafController.setItemLink(MethodLinkBuilderFactory<PricePerProductsItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PricePerProductsCollectionThymeleafController> PricePerProductsItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void PricePerProductsItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<PricePerProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return PricePerProduct
     */
    @ModelAttribute
    public PricePerProduct PricePerProductsItemThymeleafController.getPricePerProduct(@PathVariable("pricePerProduct") Long id, Locale locale, HttpMethod method) {
        PricePerProduct pricePerProduct = null;
        if (HttpMethod.PUT.equals(method)) {
            pricePerProduct = pricePerProductService.findOneForUpdate(id);
        } else {
            pricePerProduct = pricePerProductService.findOne(id);
        }
        
        if (pricePerProduct == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"PricePerProduct", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return pricePerProduct;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView PricePerProductsItemThymeleafController.show(@ModelAttribute PricePerProduct pricePerProduct, Model model) {
        model.addAttribute("pricePerProduct", pricePerProduct);
        return new ModelAndView("priceperproducts/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView PricePerProductsItemThymeleafController.showInline(@ModelAttribute PricePerProduct pricePerProduct, Model model) {
        model.addAttribute("pricePerProduct", pricePerProduct);
        return new ModelAndView("priceperproducts/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("pricePerProduct")
    public void PricePerProductsItemThymeleafController.initPricePerProductBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PricePerProductsItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("startPrice_date_format", "dd/MM/yyyy hh:mm:ss");
        model.addAttribute("endPrice_date_format", "dd/MM/yyyy hh:mm:ss");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PricePerProductsItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView PricePerProductsItemThymeleafController.editForm(@ModelAttribute PricePerProduct pricePerProduct, Model model) {
        populateForm(model);
        
        model.addAttribute("pricePerProduct", pricePerProduct);
        return new ModelAndView("priceperproducts/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView PricePerProductsItemThymeleafController.update(@Valid @ModelAttribute PricePerProduct pricePerProduct, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("priceperproducts/edit");
        }
        // Concurrency control
        PricePerProduct existingPricePerProduct = getPricePerProductService().findOne(pricePerProduct.getId());
        if(pricePerProduct.getVersion() != existingPricePerProduct.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("pricePerProduct", pricePerProduct);
            model.addAttribute("concurrency", true);
            return new ModelAndView("priceperproducts/edit");
        } else if(pricePerProduct.getVersion() != existingPricePerProduct.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("pricePerProduct", existingPricePerProduct);
            model.addAttribute("concurrency", false);
            return new ModelAndView("priceperproducts/edit");
        } else if(pricePerProduct.getVersion() != existingPricePerProduct.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            pricePerProduct.setVersion(existingPricePerProduct.getVersion());
        }
        PricePerProduct savedPricePerProduct = getPricePerProductService().save(pricePerProduct);
        UriComponents showURI = getItemLink().to(PricePerProductsItemThymeleafLinkFactory.SHOW).with("pricePerProduct", savedPricePerProduct.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pricePerProduct
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PricePerProductsItemThymeleafController.delete(@ModelAttribute PricePerProduct pricePerProduct) {
        getPricePerProductService().delete(pricePerProduct);
        return ResponseEntity.ok().build();
    }
    
}
