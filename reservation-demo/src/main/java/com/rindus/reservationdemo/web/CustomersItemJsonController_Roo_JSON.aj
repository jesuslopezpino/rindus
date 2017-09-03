// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.domain.Customer;
import com.rindus.reservationdemo.service.api.CustomerService;
import com.rindus.reservationdemo.web.CustomersItemJsonController;
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

privileged aspect CustomersItemJsonController_Roo_JSON {
    
    declare @type: CustomersItemJsonController: @RestController;
    
    declare @type: CustomersItemJsonController: @RequestMapping(value = "/customers/{customer}", name = "CustomersItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param customerService
     */
    @Autowired
    public CustomersItemJsonController.new(CustomerService customerService) {
        this.customerService = customerService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Customer
     */
    @ModelAttribute
    public Customer CustomersItemJsonController.getCustomer(@PathVariable("customer") Long id) {
        Customer customer = customerService.findOne(id);
        if (customer == null) {
            throw new NotFoundException(String.format("Customer with identifier '%s' not found",id));
        }
        return customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> CustomersItemJsonController.show(@ModelAttribute Customer customer) {
        return ResponseEntity.ok(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return UriComponents
     */
    public static UriComponents CustomersItemJsonController.showURI(Customer customer) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(CustomersItemJsonController.class).show(customer))
            .buildAndExpand(customer.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedCustomer
     * @param customer
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> CustomersItemJsonController.update(@ModelAttribute Customer storedCustomer, @Valid @RequestBody Customer customer, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        customer.setId(storedCustomer.getId());
        getCustomerService().save(customer);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> CustomersItemJsonController.delete(@ModelAttribute Customer customer) {
        getCustomerService().delete(customer);
        return ResponseEntity.ok().build();
    }
    
}
