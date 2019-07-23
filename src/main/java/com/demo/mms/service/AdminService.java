package com.demo.mms.service;

import com.demo.mms.common.domain.Admin;

public interface AdminService {
    Admin findAdminByName(String name);

    void updateAdmin(Admin admin);

    void addAdmin(Admin admin);
}
