package com.demo.mms.service;

import com.demo.mms.common.domain.Admin;
import com.demo.mms.dao.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin findAdminByName(String name) {
        return adminMapper.selectAdminByName(name);
    }

    @Override
    @Transactional
    public void updateAdmin(Admin admin) {
        adminMapper.updateByPrimaryKey(admin);
    }

    @Override
    @Transactional
    public void addAdmin(Admin admin) {
        adminMapper.insert(admin);
    }
}
