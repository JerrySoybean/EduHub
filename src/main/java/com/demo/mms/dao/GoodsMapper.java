package com.demo.mms.dao;

import com.demo.mms.common.domain.Goods;

import java.util.List;

public interface GoodsMapper {
    int deleteByPrimaryKey(String id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<Goods> selectAllGoods();

    List<Goods> selectByGclassId(String gclassId);

    List<Goods> selectGoodsByNameHas(String name);
}