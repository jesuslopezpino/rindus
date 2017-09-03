// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.web;

import com.rindus.reservationdemo.web.StocksItemVentasThymeleafController;
import com.rindus.reservationdemo.web.StocksItemVentasThymeleafLinkFactory;
import io.springlets.web.mvc.util.MethodLinkFactory;
import io.springlets.web.mvc.util.SpringletsMvcUriComponentsBuilder;
import java.util.Map;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponents;

privileged aspect StocksItemVentasThymeleafLinkFactory_Roo_LinkFactory {
    
    declare parents: StocksItemVentasThymeleafLinkFactory implements MethodLinkFactory<StocksItemVentasThymeleafController>;
    
    declare @type: StocksItemVentasThymeleafLinkFactory: @Component;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.DATATABLES = "datatables";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.DATATABLESBYIDSIN = "datatablesByIdsIn";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.CREATEFORM = "createForm";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.REMOVEFROMVENTAS = "removeFromVentas";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.REMOVEFROMVENTASBATCH = "removeFromVentasBatch";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String StocksItemVentasThymeleafLinkFactory.CREATE = "create";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<StocksItemVentasThymeleafController> StocksItemVentasThymeleafLinkFactory.getControllerClass() {
        return StocksItemVentasThymeleafController.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param methodName
     * @param parameters
     * @param pathVariables
     * @return UriComponents
     */
    public UriComponents StocksItemVentasThymeleafLinkFactory.toUri(String methodName, Object[] parameters, Map<String, Object> pathVariables) {
        if (methodName.equals(DATATABLES)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatables(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(DATATABLESBYIDSIN)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).datatablesByIdsIn(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATEFORM)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).createForm(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMVENTAS)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromVentas(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(REMOVEFROMVENTASBATCH)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).removeFromVentasBatch(null, null)).buildAndExpand(pathVariables);
        }
        if (methodName.equals(CREATE)) {
            return SpringletsMvcUriComponentsBuilder.fromMethodCall(SpringletsMvcUriComponentsBuilder.on(getControllerClass()).create(null, null, null, null, null)).buildAndExpand(pathVariables);
        }
        throw new IllegalArgumentException("Invalid method name: " + methodName);
    }
    
}
