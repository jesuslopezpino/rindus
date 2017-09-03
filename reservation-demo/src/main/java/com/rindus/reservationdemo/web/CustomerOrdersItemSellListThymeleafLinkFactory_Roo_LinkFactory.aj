// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.web.CustomerOrdersItemSellListThymeleafController;
import com.rindus.reservationdemo.web.CustomerOrdersItemSellListThymeleafLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect CustomerOrdersItemSellListThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: CustomerOrdersItemSellListThymeleafLinkFactory implements MethodLinkFactory<CustomerOrdersItemSellListThymeleafController>;
    
    declare @type: CustomerOrdersItemSellListThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.DATATABLESBYIDSIN = "datatablesByIdsIn";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.CREATEFORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.REMOVEFROMSELLLIST = "removeFromSellList";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.REMOVEFROMSELLLISTBATCH = "removeFromSellListBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CustomerOrdersItemSellListThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<CustomerOrdersItemSellListThymeleafController> CustomerOrdersItemSellListThymeleafLinkFactory.getControllerClass() {
        return CustomerOrdersItemSellListThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents CustomerOrdersItemSellListThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(DATATABLES)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DATATABLESBYIDSIN)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatablesByIdsIn(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATEFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).createForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMSELLLIST)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromSellList(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMSELLLISTBATCH)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromSellListBatch(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
