package com.jdshop.service.impl;

import com.jdshop.dao.CartItemMapper;
import com.jdshop.pojo.vo.CartItem;
import com.jdshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartItemMapper cartItemDao;
    //根据用户id查询对应购物车信息
    @Override
    public List<CartItem> getCart(Long userId) {
        //调用Dao层方法取得购物车数据
        List<CartItem> list=cartItemDao.getCart(userId);
        //返回取得的数据
        return list;
    }


    //修改购物车对应商品的数量
    @Override
    public int modifyQuantity(int quantity,long id) {
        int i = cartItemDao.modifyQuantity(quantity,id);
        return i;
    }

    //删除购物车对应商品记录
    @Override
    public int deleteCartItem(long id) {
        int i = cartItemDao.deleteCartItem(id);
        return i;
    }
}
