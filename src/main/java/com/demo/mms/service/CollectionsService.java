package com.demo.mms.service;

import com.demo.mms.common.domain.Collections;

import java.util.List;

public interface CollectionsService {
    List<Collections> findGoodsIdByCustomerId(String customer_id);

    int addItem(Collections collection);

    int deleteCollectionById(String id);
}
