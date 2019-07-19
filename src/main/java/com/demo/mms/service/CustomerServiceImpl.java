package com.demo.mms.service;

import com.demo.mms.common.domain.Customer;
import com.demo.mms.dao.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    CustomerMapper customerMapper;
    @Override
    public Customer findCustomerByName(String name) {
        return customerMapper.selectCustomerByName(name);
    }

    @Override
    public void insertCustomer(Customer customer) {
        customerMapper.insertSelective(customer);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerMapper.updateByPrimaryKeySelective(customer);
    }

    @Override
    public Customer findCustomerById(String id) {
        return customerMapper.selectByPrimaryKey(id);
    }
}
