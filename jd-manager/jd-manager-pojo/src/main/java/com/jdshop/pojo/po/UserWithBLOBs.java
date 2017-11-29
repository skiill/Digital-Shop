package com.jdshop.pojo.po;

public class UserWithBLOBs extends User {
    private String receiverAddress;

    private String itemAttention;

    private String shopAttention;

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress == null ? null : receiverAddress.trim();
    }

    public String getItemAttention() {
        return itemAttention;
    }

    public void setItemAttention(String itemAttention) {
        this.itemAttention = itemAttention == null ? null : itemAttention.trim();
    }

    public String getShopAttention() {
        return shopAttention;
    }

    public void setShopAttention(String shopAttention) {
        this.shopAttention = shopAttention == null ? null : shopAttention.trim();
    }
}