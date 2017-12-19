package com.jdshop.service.impl;


import com.jdshop.dao.*;
import com.jdshop.pojo.po.*;

import com.jdshop.pojo.vo.CartItem;
import com.jdshop.service.OrderService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    private UserMapper userDao;
    @Autowired
    private CartItemMapper cartItemDao;
    @Autowired
    private OrdersMapper orderDao;
    @Autowired
    private OrderItemMapper orderItemDao;
    @Autowired
    private OrderShippingMapper orderShippingDao;

    @Override
    public CartItem getCart(long cid) {
        //根据购物车id查找购物车数据
        CartItem cartItem=cartItemDao.getCartByCid(cid);
        return cartItem;
    }

    @Override
    public UserWithBLOBs getUser(long uid) {
        //根据用户id查找用户数据
        UserWithBLOBs user=userDao.selectByPrimaryKey(uid);
        return user;
    }

    @Override
    public int insertOrder(Orders orders) {
        return orderDao.insertSelective(orders);
    }

    @Override
    public int insertOrderItem(OrderItem orderItem) {
        return orderItemDao.insertSelective(orderItem);
    }

    @Override
    public int insertOrderShipping(OrderShipping orderShipping) {
        return orderShippingDao.insertSelective(orderShipping);
    }
}
