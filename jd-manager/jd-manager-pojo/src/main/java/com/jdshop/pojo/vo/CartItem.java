package com.jdshop.pojo.vo;

import com.jdshop.pojo.po.Cart;

import java.util.Date;

public class CartItem extends Cart {
    private String title;
    private String sellPoint;
    private Long price;
    private String pic;

    private String shopName;



    private Long id;

    private Long userId;

    private Long itemId;

    private Long shopId;

    private Integer quantity;

    private Date created;

    private Date updated;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSellPoint() {
        return sellPoint;
    }

    public void setSellPoint(String sellPoint) {
        this.sellPoint = sellPoint;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getItemId() {
        return itemId;
    }

    public void setItemId(Long itemId) {
        this.itemId = itemId;
    }

    public Long getShopId() {
        return shopId;
    }

    public void setShopId(Long shopId) {
        this.shopId = shopId;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
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

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "title='" + title + '\'' +
                ", sellPoint='" + sellPoint + '\'' +
                ", price=" + price +
                ", pic='" + pic + '\'' +
                ", shopName='" + shopName + '\'' +
                ", id=" + id +
                ", userId=" + userId +
                ", itemId=" + itemId +
                ", shopId=" + shopId +
                ", quantity=" + quantity +
                ", created=" + created +
                ", updated=" + updated +
                '}';
    }
}
