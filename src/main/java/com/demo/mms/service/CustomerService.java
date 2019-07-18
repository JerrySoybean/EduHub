package com.demo.mms.service;

import com.demo.mms.common.domain.Customer;

public interface CustomerService {
    Customer findCustomerByName(String name);
}
