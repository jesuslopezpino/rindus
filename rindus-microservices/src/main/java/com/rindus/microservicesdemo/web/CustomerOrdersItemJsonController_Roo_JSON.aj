// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.microservicesdemo.web;

import com.rindus.microservicesdemo.domain.CustomerOrder;
import com.rindus.microservicesdemo.service.api.CustomerOrderService;
import com.rindus.microservicesdemo.web.CustomerOrdersItemJsonController;
import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect CustomerOrdersItemJsonController_Roo_JSON {
    
    declare @type: CustomerOrdersItemJsonController: @RestController;
    
    declare @type: CustomerOrdersItemJsonController: @RequestMapping(value = "/customerorders/{customerOrder}", name = "CustomerOrdersItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerOrderService
     */
    @Autowired
    public CustomerOrdersItemJsonController.new(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return CustomerOrder
     */
    @ModelAttribute
    public CustomerOrder CustomerOrdersItemJsonController.getCustomerOrder(@PathVariable("customerOrder") Long id) {
        CustomerOrder customerOrder = customerOrderService.findOne(id);
        if (customerOrder == null) {
            throw new NotFoundException(String.format("CustomerOrder with identifier '%s' not found",id));
        }
        return customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CustomerOrdersItemJsonController.show(@ModelAttribute CustomerOrder customerOrder) {
        return ResponseEntity.ok(customerOrder);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return UriComponents
     */
    public static UriComponents CustomerOrdersItemJsonController.showURI(CustomerOrder customerOrder) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CustomerOrdersItemJsonController.class).show(customerOrder))
            .buildAndExpand(customerOrder.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCustomerOrder
     * @param customerOrder
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CustomerOrdersItemJsonController.update(@ModelAttribute CustomerOrder storedCustomerOrder, @Valid @RequestBody CustomerOrder customerOrder, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        customerOrder.setId(storedCustomerOrder.getId());
        getCustomerOrderService().save(customerOrder);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CustomerOrdersItemJsonController.delete(@ModelAttribute CustomerOrder customerOrder) {
        getCustomerOrderService().delete(customerOrder);
        return ResponseEntity.ok().build();
    }
    
}