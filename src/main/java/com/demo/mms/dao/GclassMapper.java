package com.demo.mms.dao;

import com.demo.mms.common.domain.Gclass;

public interface GclassMapper {
    int deleteByPrimaryKey(String id);

    int insert(Gclass record);

    int insertSelective(Gclass record);

    Gclass selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Gclass record);

    int updateByPrimaryKey(Gclass record);
}