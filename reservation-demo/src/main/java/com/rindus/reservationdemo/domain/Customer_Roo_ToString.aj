// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rindus.reservationdemo.domain;

import com.rindus.reservationdemo.domain.Customer;

privileged aspect Customer_Roo_ToString {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.toString() {
        return "Customer {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", email='" + email + '\'' + 
                ", name='" + name + '\'' + 
                ", surname1='" + surname1 + '\'' + 
                ", surname2='" + surname2 + '\'' + 
                ", birthDate='" + birthDate + '\'' + 
                ", ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE + '\'' + 
                ", ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE='" + ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE + '\'' + "}" + super.toString();
    }
    
}
