package com.jdshop.web;


import com.jdshop.pojo.vo.CartItem;
import com.jdshop.service.CartService;
import com.jdshop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;

@Controller
public class CartAction {

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;

    @RequestMapping(value = "/cart")
    public ModelAndView cart(@RequestParam("id") Long id){
        //测试数据：用户id为1
        //Long l=new Long ((long)1);
        //执行查询用户购物车数据
        List<CartItem> list=cartService.getCart(id);
        System.err.println(list);
        ModelAndView mv=new ModelAndView("cart");
        mv.addObject("cartList",list);
        mv.addObject("id",id);
        //讲购物车的数据放入
        return mv;
    }

    @RequestMapping(value = "/cart/quantity")
    public ModelAndView quantity(@RequestParam("quantity") int quantity,@RequestParam("id") long id) {
        System.err.println(quantity);
        //改变购物车商品数量
        int i = cartService.modifyQuantity(quantity,id);
        if (i == 1) {
            System.err.println("修改成功");
        } else {
            System.err.println("修改失败");
        }


        Long l=new Long ((long)2);

        //执行查询用户购物车数据
        List<CartItem> list = cartService.getCart(l);
        System.err.println(list);
        ModelAndView mv = new ModelAndView("cart");
        mv.addObject("cartList", list);
        //讲购物车的数据放入
        return mv;
    }
    // 删除
    @RequestMapping(value = "/cart/delete")
    @ResponseBody
    public int deleteCartItem(@RequestParam("id") long id) {

        //根据购物车id删除购物车记录
        int i = cartService.deleteCartItem(id);
        //讲购物车的数据放入
        return i;
    }



}
