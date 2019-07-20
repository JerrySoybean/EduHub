package com.demo.mms.dao;

import com.demo.mms.common.domain.Customer;

import java.util.List;

public interface CustomerMapper {
    int deleteByPrimaryKey(String id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    Customer selectCustomerByName(String name);

    List<Customer> selectAllCustomer();
}