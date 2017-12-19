package com.jdshop.dao;

import com.jdshop.pojo.vo.CartItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartItemMapper {

    //根据用户id查询对应购物车信息
    List<CartItem> getCart(Long userId);

    //根据购物车id查找购物车数据
    CartItem getCartByCid(Long cid);

    //修改购物车对应商品的数量
    int modifyQuantity(@Param("quantity") int quantity, @Param("id") long id);

    //删除购物车对应商品的记录
    int deleteCartItem(long id);
}
