package com.demo.mms.service;

import com.demo.mms.common.domain.Gclass;
import com.demo.mms.dao.GclassMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GclassServiceImpl implements GclassService {
    @Autowired
    private GclassMapper gclassMapper;
    @Override
    public Gclass findGclassById(String id) {
        return gclassMapper.selectByPrimaryKey(id);
    }
}
