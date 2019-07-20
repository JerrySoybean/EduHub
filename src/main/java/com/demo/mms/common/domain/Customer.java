package com.demo.mms.common.domain;

import com.demo.mms.common.utils.DateUtil;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Customer {
    private String id;

    private String name;

    private String password;

    private String email;

    private String tel;

    private Boolean sex;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    private Date birthday;

    private Boolean privilege;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public Boolean getSex() {
        return sex;
    }

    public String getSexTxt() {
        if (sex == null) {
            return null;
        }
        return sex?"Male":"Female";
    }

    public String getPrivilegeTxt() {
        return privilege?"vip":"non-vip";
    }

    public void setSex(Boolean sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public String getBirthdayTxt()
    {
        if (birthday == null){
            return null;
        }
        return DateUtil.parseDateToStr(birthday,DateUtil.DATE_FORMAT_YYYY_MM_DD);
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Boolean getPrivilege() {
        return privilege;
    }

    public void setPrivilege(Boolean privilege) {
        this.privilege = privilege;
    }
}