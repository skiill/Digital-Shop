package com.jdshop.service;

import com.jdshop.pojo.vo.CartItem;

import java.util.List;

public interface CartService {
    //根据用户id查询对应购物车信息
    List<CartItem> getCart(Long userId);
    //修改购物车对应商品的数量
    int modifyQuantity(int quantity, long id);

    //删除购物车对应商品记录
    int deleteCartItem(long id);
}
