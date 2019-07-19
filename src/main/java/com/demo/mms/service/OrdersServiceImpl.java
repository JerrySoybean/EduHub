package com.demo.mms.service;

import com.demo.mms.common.domain.Orders;
import com.demo.mms.dao.OrdersMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    OrdersMapper ordersMapper;
    @Override
    public List<Orders> findOrdersIdByCustomerId(String customer_id) {
        return ordersMapper.selectByCustomerId(customer_id);
    }
}
