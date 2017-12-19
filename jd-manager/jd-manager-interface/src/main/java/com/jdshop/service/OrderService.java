package com.jdshop.service;

import com.jdshop.pojo.po.*;
import com.jdshop.pojo.vo.CartItem;

public interface OrderService {

    //根据购物车id来查找购物车数据
    CartItem getCart(long cid);

    //根据用户Id将用户数据
    UserWithBLOBs getUser(long uid);

    //插入一条order订单数据
    int insertOrder(Orders orders);

    //插入一条orderItem订单数据
    int insertOrderItem(OrderItem orderItem);

    //插入一条orderShipping订单数据
    int insertOrderShipping(OrderShipping orderShipping);

    //生成order3表后删除购物车数据

}
