package com.demo.mms.service;

import com.demo.mms.common.domain.Collections;
import com.demo.mms.dao.CollectionsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CollectionsServiceImpl implements CollectionsService {
    @Autowired
    CollectionsMapper collectionsMapper;
    @Override
    public List<Collections> findGoodsIdByCustomerId(String customer_id) {
        return collectionsMapper.selectByCustomerId(customer_id);
    }

    @Override
    @Transactional
    public int addItem(Collections collection) { return collectionsMapper.insert(collection); }

    @Override
    @Transactional
    public int deleteCollectionById(String id) {
        return collectionsMapper.deleteByPrimaryKey(id);
    }
}
