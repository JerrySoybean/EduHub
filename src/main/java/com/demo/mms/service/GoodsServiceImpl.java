package com.demo.mms.service;

import com.demo.mms.common.domain.Goods;
import com.demo.mms.dao.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public Goods findGoodsById(String id) {
        return goodsMapper.selectByPrimaryKey(id);
    }
}
