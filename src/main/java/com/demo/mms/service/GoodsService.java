package com.demo.mms.service;

import com.demo.mms.common.domain.Goods;

import java.util.List;

public interface GoodsService {
    Goods findGoodsById(String id);

    List<Goods> findAllGoods();

    void updateItem(Goods item);

    List<Goods> findGoodsByGclassId(String gclassId);

    void addGoods(Goods item);

    List<Goods> findGoodsByName(String name);
}
