package com.jdshop.pojo.vo;

import com.jdshop.pojo.po.OrderItem;
import com.jdshop.pojo.po.Orders;

import java.util.List;

public class OrderManagerView extends Orders {
    //订单编号 orderId、订单创建时间，图片路径，title、价格、购买数量，合计、运费，订单状态
    private Long totalPrice;
    private List<OrderItem> orderList;


    public List<OrderItem> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<OrderItem> orderList) {
        this.orderList = orderList;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }

    @Override
    public String toString() {
        return "OrderManagerView{" +
                "totalPrice=" + totalPrice +
                ", orderList=" + orderList +
                '}';
    }
}
