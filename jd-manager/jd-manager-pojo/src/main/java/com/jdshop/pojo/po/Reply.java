package com.jdshop.pojo.po;

import java.util.Date;

public class Reply {
    private Long id;

    private Long parentId;

    private Integer status;

    private Boolean isEvaluate;

    private String pic;

    private Long userId;

    private Long returnUserId;

    private Integer shippingGrade;

    private Integer itemGrade;

    private Integer shopServiceGrade;

    private Long itemId;

    private Date created;

    private Date updated;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Boolean getIsEvaluate() {
        return isEvaluate;
    }

    public void setIsEvaluate(Boolean isEvaluate) {
        this.isEvaluate = isEvaluate;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic == null ? null : pic.trim();
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getReturnUserId() {
        return returnUserId;
    }

    public void setReturnUserId(Long returnUserId) {
        this.returnUserId = returnUserId;
    }

    public Integer getShippingGrade() {
        return shippingGrade;
    }

    public void setShippingGrade(Integer shippingGrade) {
        this.shippingGrade = shippingGrade;
    }

    public Integer getItemGrade() {
        return itemGrade;
    }

    public void setItemGrade(Integer itemGrade) {
        this.itemGrade = itemGrade;
    }

    public Integer getShopServiceGrade() {
        return shopServiceGrade;
    }

    public void setShopServiceGrade(Integer shopServiceGrade) {
        this.shopServiceGrade = shopServiceGrade;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}