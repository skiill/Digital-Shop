package com.jdshop.pojo.po;

public class Comment {
    private Long id;

    private String content;

    private String pic;

    private Long userId;

    private Long byUserId;

    private Integer shippingGrade;

    private Integer itemGrade;

    private Integer shopServiceGrade;

    private Long itemId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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

    public Long getByUserId() {
        return byUserId;
    }

    public void setByUserId(Long byUserId) {
        this.byUserId = byUserId;
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
}