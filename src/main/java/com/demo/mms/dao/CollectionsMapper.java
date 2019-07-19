package com.demo.mms.dao;

import com.demo.mms.common.domain.Collections;

import java.util.List;

public interface CollectionsMapper {
    int deleteByPrimaryKey(String id);

    int insert(Collections record);

    int insertSelective(Collections record);

    Collections selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Collections record);

    int updateByPrimaryKey(Collections record);

    List<Collections> selectByCustomerId(String customer_id);
}