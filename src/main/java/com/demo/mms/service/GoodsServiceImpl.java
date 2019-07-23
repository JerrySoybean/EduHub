package com.demo.mms.service;

import com.demo.mms.common.domain.Goods;
import com.demo.mms.dao.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    @Override
    public Goods findGoodsById(String id) {
        return goodsMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Goods> findAllGoods() {
        return goodsMapper.selectAllGoods();
    }

    @Override
    @Transactional
    public void updateItem(Goods item) {
        goodsMapper.updateByPrimaryKey(item);
    }

    @Override
    public List<Goods> findGoodsByGclassId(String gclassId) {
        return goodsMapper.selectByGclassId(gclassId);
    }

    @Override
    @Transactional
    public void addGoods(Goods item) {
        goodsMapper.insert(item);
    }

    @Override
    public List<Goods> findGoodsByName(String name) {
        return goodsMapper.selectGoodsByNameHas(name);
    }
}
