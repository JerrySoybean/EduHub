package com.demo.mms.dao;

import com.demo.mms.common.domain.Cart;

import java.util.List;

public interface CartMapper {
    int deleteByPrimaryKey(String id);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);

    List<Cart> selectByCustomerId(String customer_id);
}