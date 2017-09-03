// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.CustomerOrder;
import com.rindus.reservationdemo.domain.Sell;
import com.rindus.reservationdemo.service.api.CustomerOrderService;
import com.rindus.reservationdemo.service.api.SellService;
import com.rindus.reservationdemo.web.CustomerOrdersCollectionThymeleafController;
import com.rindus.reservationdemo.web.CustomerOrdersCollectionThymeleafLinkFactory;
import com.rindus.reservationdemo.web.CustomerOrdersItemSellListThymeleafController;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

privileged aspect CustomerOrdersItemSellListThymeleafController_Roo_Thymeleaf {
    
    declare @type: CustomerOrdersItemSellListThymeleafController: @Controller;
    
    declare @type: CustomerOrdersItemSellListThymeleafController: @RequestMapping(value = "/customerorders/{customerOrder}/sellList", name = "CustomerOrdersItemSellListThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource CustomerOrdersItemSellListThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> CustomerOrdersItemSellListThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService CustomerOrdersItemSellListThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerOrderService
     * @param sellService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public CustomerOrdersItemSellListThymeleafController.new(CustomerOrderService customerOrderService, SellService sellService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setCustomerOrderService(customerOrderService);
        setSellService(sellService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(CustomerOrdersCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource CustomerOrdersItemSellListThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void CustomerOrdersItemSellListThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> CustomerOrdersItemSellListThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void CustomerOrdersItemSellListThymeleafController.setCollectionLink(MethodLinkBuilderFactory<CustomerOrdersCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService CustomerOrdersItemSellListThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void CustomerOrdersItemSellListThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return CustomerOrder
     */
    @ModelAttribute
    public CustomerOrder CustomerOrdersItemSellListThymeleafController.getCustomerOrder(@PathVariable("customerOrder") Long id, Locale locale, HttpMethod method) {
        CustomerOrder customerOrder = null;
        if (HttpMethod.PUT.equals(method)) {
            customerOrder = customerOrderService.findOneForUpdate(id);
        } else {
            customerOrder = customerOrderService.findOne(id);
        }
        
        if (customerOrder == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"CustomerOrder", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerOrdersItemSellListThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void CustomerOrdersItemSellListThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Sell>> CustomerOrdersItemSellListThymeleafController.datatables(@ModelAttribute CustomerOrder customerOrder, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Sell> sellList = getSellService().findByCustomerOrder(customerOrder, search, pageable);
        long totalSellListCount = getSellService().countByCustomerOrder(customerOrder);
        ConvertedDatatablesData<Sell> data =  new ConvertedDatatablesData<Sell>(sellList, totalSellListCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatablesByIdsIn", produces = Datatables.MEDIA_TYPE, value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Sell>> CustomerOrdersItemSellListThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Sell> sellList = getSellService().findAllByIdsIn(ids, search, pageable);
        long totalSellListCount = sellList.getTotalElements();
        ConvertedDatatablesData<Sell> data =  new ConvertedDatatablesData<Sell>(sellList, totalSellListCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView CustomerOrdersItemSellListThymeleafController.createForm(@ModelAttribute CustomerOrder customerOrder, Model model) {
        populateForm(model);
        model.addAttribute("sell", new Sell());
        return new ModelAndView("customerorders/sellList/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellListToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromSellList", value = "/{sellListToRemove}")
    @ResponseBody
    public ResponseEntity<?> CustomerOrdersItemSellListThymeleafController.removeFromSellList(@ModelAttribute CustomerOrder customerOrder, @PathVariable("sellListToRemove") Long sellListToRemove) {
        getCustomerOrderService().removeFromSellList(customerOrder,Collections.singleton(sellListToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellListToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromSellListBatch", value = "/batch/{sellListToRemove}")
    @ResponseBody
    public ResponseEntity<?> CustomerOrdersItemSellListThymeleafController.removeFromSellListBatch(@ModelAttribute CustomerOrder customerOrder, @PathVariable("sellListToRemove") Collection<Long> sellListToRemove) {
        getCustomerOrderService().removeFromSellList(customerOrder, sellListToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @param sellList
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView CustomerOrdersItemSellListThymeleafController.create(@ModelAttribute CustomerOrder customerOrder, @RequestParam(value = "sellListIds", required = false) List<Long> sellList, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (sellList != null) {
            for (Iterator<Long> iterator = sellList.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != customerOrder.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (sellList != null) {
                customerOrder.setSellList(new HashSet<Sell>(getSellService().findAll(sellList)));
            }else{
                customerOrder.setSellList(new HashSet<Sell>());
            }
            // Reset the version to prevent update
             customerOrder.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("customerOrder", customerOrder);
            model.addAttribute("concurrency", true);
            return new ModelAndView("customerorders/sellList/create");
        }else if(version != customerOrder.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("customerOrder", customerOrder);
            model.addAttribute("concurrency", false);
            return new ModelAndView("customerorders/sellList/create");
        }
        getCustomerOrderService().setSellList(customerOrder,sellList);
        return new ModelAndView("redirect:" + getCollectionLink().to(CustomerOrdersCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
