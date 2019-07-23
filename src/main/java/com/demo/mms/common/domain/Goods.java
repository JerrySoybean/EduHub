package com.demo.mms.common.domain;

import com.demo.mms.common.utils.DateUtil;

import java.math.BigDecimal;
import java.util.Date;

public class Goods {
    private String id;

    private String name;

    private String gclassId;

    private String gformatId;

    private BigDecimal price;

    private String introduction;

    private String picturePath;

    private Integer size;

    private Integer thumbUp;

    private Boolean visible;

    private Boolean restriction;

    private Date uploadDate;

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

    public String getGclassId() {
        return gclassId;
    }

    public void setGclassId(String gclassId) {
        this.gclassId = gclassId == null ? null : gclassId.trim();
    }

    public String getGformatId() {
        return gformatId;
    }

    public void setGformatId(String gformatId) {
        this.gformatId = gformatId == null ? null : gformatId.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }

    public String getPicturePath() {
        return picturePath;
    }

    public void setPicturePath(String picturePath) {
        this.picturePath = picturePath == null ? null : picturePath.trim();
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getThumbUp() {
        return thumbUp;
    }

    public void setThumbUp(Integer thumbUp) {
        this.thumbUp = thumbUp;
    }

    public Boolean getVisible() {
        return visible;
    }

    public void setVisible(Boolean visible) {
        this.visible = visible;
    }

    public Boolean getRestriction() {
        return restriction;
    }

    public String getRestrictionTxt() {
        return restriction ? "Vip item" : "Not vip item";
    }

    public void setRestriction(Boolean restriction) {
        this.restriction = restriction;
    }

    public Date getUploadDate() {
        return uploadDate;
    }

    public String getUploadDateTxt() {
        return DateUtil.parseDateToStr(uploadDate, DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS);
    }

    public void setUploadDate(Date uploadDate) {
        this.uploadDate = uploadDate;
    }
}