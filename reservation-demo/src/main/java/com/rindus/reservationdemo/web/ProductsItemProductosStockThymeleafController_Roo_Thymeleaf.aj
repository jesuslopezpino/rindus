// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.Product;
import com.rindus.reservationdemo.domain.Stock;
import com.rindus.reservationdemo.service.api.ProductService;
import com.rindus.reservationdemo.service.api.StockService;
import com.rindus.reservationdemo.web.ProductsCollectionThymeleafController;
import com.rindus.reservationdemo.web.ProductsCollectionThymeleafLinkFactory;
import com.rindus.reservationdemo.web.ProductsItemProductosStockThymeleafController;
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

privileged aspect ProductsItemProductosStockThymeleafController_Roo_Thymeleaf {
    
    declare @type: ProductsItemProductosStockThymeleafController: @Controller;
    
    declare @type: ProductsItemProductosStockThymeleafController: @RequestMapping(value = "/products/{product}/productosStock", name = "ProductsItemProductosStockThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource ProductsItemProductosStockThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemProductosStockThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService ProductsItemProductosStockThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param productService
     * @param stockService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public ProductsItemProductosStockThymeleafController.new(ProductService productService, StockService stockService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setProductService(productService);
        setStockService(stockService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(ProductsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource ProductsItemProductosStockThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void ProductsItemProductosStockThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<ProductsCollectionThymeleafController> ProductsItemProductosStockThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void ProductsItemProductosStockThymeleafController.setCollectionLink(MethodLinkBuilderFactory<ProductsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ProductsItemProductosStockThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ProductsItemProductosStockThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
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
    public Product ProductsItemProductosStockThymeleafController.getProduct(@PathVariable("product") Long id, Locale locale, HttpMethod method) {
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
     * @param model
     */
    public void ProductsItemProductosStockThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("dateIn_date_format", "dd/MM/yyyy");
        model.addAttribute("dateOut_date_format", "dd/MM/yyyy hh:mm:ss");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void ProductsItemProductosStockThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Stock>> ProductsItemProductosStockThymeleafController.datatables(@ModelAttribute Product producto, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Stock> productosStock = getStockService().findByProducto(producto, search, pageable);
        long totalProductosStockCount = getStockService().countByProducto(producto);
        ConvertedDatatablesData<Stock> data =  new ConvertedDatatablesData<Stock>(productosStock, totalProductosStockCount, draw, getConversionService(), datatablesColumns);
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
    public ResponseEntity<ConvertedDatatablesData<Stock>> ProductsItemProductosStockThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Stock> productosStock = getStockService().findAllByIdsIn(ids, search, pageable);
        long totalProductosStockCount = productosStock.getTotalElements();
        ConvertedDatatablesData<Stock> data =  new ConvertedDatatablesData<Stock>(productosStock, totalProductosStockCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView ProductsItemProductosStockThymeleafController.createForm(@ModelAttribute Product product, Model model) {
        populateForm(model);
        model.addAttribute("stock", new Stock());
        return new ModelAndView("products/productosStock/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromProductosStock", value = "/{productosStockToRemove}")
    @ResponseBody
    public ResponseEntity<?> ProductsItemProductosStockThymeleafController.removeFromProductosStock(@ModelAttribute Product product, @PathVariable("productosStockToRemove") Long productosStockToRemove) {
        getProductService().removeFromProductosStock(product,Collections.singleton(productosStockToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStockToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromProductosStockBatch", value = "/batch/{productosStockToRemove}")
    @ResponseBody
    public ResponseEntity<?> ProductsItemProductosStockThymeleafController.removeFromProductosStockBatch(@ModelAttribute Product product, @PathVariable("productosStockToRemove") Collection<Long> productosStockToRemove) {
        getProductService().removeFromProductosStock(product, productosStockToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param productosStock
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView ProductsItemProductosStockThymeleafController.create(@ModelAttribute Product product, @RequestParam(value = "productosStockIds", required = false) List<Long> productosStock, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (productosStock != null) {
            for (Iterator<Long> iterator = productosStock.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(version != product.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (productosStock != null) {
                product.setProductosStock(new HashSet<Stock>(getStockService().findAll(productosStock)));
            }else{
                product.setProductosStock(new HashSet<Stock>());
            }
            // Reset the version to prevent update
             product.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("product", product);
            model.addAttribute("concurrency", true);
            return new ModelAndView("products/productosStock/create");
        }else if(version != product.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("product", product);
            model.addAttribute("concurrency", false);
            return new ModelAndView("products/productosStock/create");
        }
        getProductService().setProductosStock(product,productosStock);
        return new ModelAndView("redirect:" + getCollectionLink().to(ProductsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
