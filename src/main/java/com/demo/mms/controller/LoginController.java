package com.demo.mms.controller;

import com.demo.mms.common.domain.Admin;
import com.demo.mms.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @Autowired
    private AdminService adminService;
    @RequestMapping("/login")
    public String login(ModelMap modelMap, String name, String password, boolean ca ) {
        String msg = null;
        if (ca) {
            Admin admin = adminService.findAdminByName(name);
            if (admin == null) {
                msg = "User name doesn't exist";
                modelMap.put("msg", msg);
                return "login";
            } else {
                String pwd = admin.getPassword();
                if (pwd != null && pwd.equals(password)) {
                    msg = "Login success";
                    modelMap.put("msg", msg);
                    return "adminHome";
                } else {
                    msg = "Password error";
                    modelMap.put("msg", msg);
                    return "login";
                }
            }
        } else {
            return "customerHome";
        }
    }
}
