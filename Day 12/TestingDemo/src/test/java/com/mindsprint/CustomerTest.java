package com.mindsprint;

import com.mindsprint.project.models.Customer;
import com.mindsprint.project.service.CustomerService;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.List;

public class CustomerTest {
    static CustomerService service;

    @BeforeAll
    public static void setup() {
        service = new CustomerService();
    }
    @AfterAll
    public static void teardown() {
        service = null;
    }
    @Test
    public void addCustomer(){
        Customer result = service.addNewCustomer(new Customer(4,"Nisha","PB"));
        Assertions.assertEquals("Nisha", result.getName());
    }
    @Test
    public void getAllCustomer(){
        List<Customer> list = service.getAllCustomer();
        Assertions.assertEquals(4, list.size());
    }
}
