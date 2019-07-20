package com.demo.mms.common.domain;

import com.demo.mms.common.utils.DateUtil;

import java.util.Date;

public class Orders {
    private String id;

    private String customerId;

    private String goodsId;

    private Boolean status;

    private Date createTime;

    private Date finishTime;

    private String comment;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId == null ? null : customerId.trim();
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId == null ? null : goodsId.trim();
    }

    public Boolean getStatus() {
        return status;
    }

    public String getStatusTxt() {
        return status?"Finished":"Unfinished";
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public String getCreateTimeTxt() {
        return DateUtil.parseDateToStr(createTime, DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS);
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getFinishTime() {
        return finishTime;
    }

    public String getFinishTimeTxt() {
        if (finishTime == null) {
            return null;
        }
        return DateUtil.parseDateToStr(finishTime, DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS);
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public String getComment() {
        if (comment == null) {
            return null;
        }
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}