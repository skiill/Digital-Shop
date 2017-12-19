package com.jdshop.web;


import com.jdshop.common.util.IDUtils;
import com.jdshop.pojo.po.*;
import com.jdshop.pojo.vo.AddressView;
import com.jdshop.pojo.vo.CartItem;
import com.jdshop.pojo.vo.JsonUtils;
import com.jdshop.service.CartService;
import com.jdshop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

import java.util.Date;
import java.util.List;


@Controller
public class OrderAction {

    @Autowired
    private OrderService orderService;
    @Autowired
    private CartService cartService;

    @RequestMapping(value = "/cartT0order",method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView order(@RequestParam("cid") String cid, HttpSession session){
        //测试：用户id为2
        /*Long uid=new Long ((long)1);*/
//        System.err.println(cid);
        User user = (User) session.getAttribute("user");

        //创建一个list存放购物车数据
        List cartList = new ArrayList();
        //将前台传过来的String类型的购物车id拆分
        String[] cidStrArray = cid.split(",");
        for (int i = 0; i < cidStrArray.length; i++) {
//            System.err.println(cidStrArray[i]);
            long long_cid = Long.parseLong(cidStrArray[i]);
            //根据购物车id来查找购物车数据,并将购物车数据放到list里去
            cartList.add(orderService.getCart(long_cid));
        }

        //根据用户id查找用户数据
        UserWithBLOBs userWithBLOBs = orderService.getUser(user.getId());
        System.out.println(user);
        List<AddressView> addressList = JsonUtils.jsonToList(userWithBLOBs.getReceiverAddress(),AddressView.class);

        ModelAndView mv1=new ModelAndView("order");
        mv1.addObject("user",user);
        mv1.addObject("cartList",cartList);
        mv1.addObject("addressList",addressList);

        return mv1;
    }


    @RequestMapping(value = "/address")
    public String address(){
        return "address";
    }




    @RequestMapping(value = "/commit",method = RequestMethod.POST)
    @ResponseBody
    public int commit(@RequestParam("userId")long userId,@RequestParam("postFee")String postFee,@RequestParam("payment") String payment,
                         @RequestParam("cartId") String cartId,@RequestParam("paymentType") Integer paymentType,
                         @RequestParam("status")Integer status,@RequestParam("receiverName") String receiverName,
                         @RequestParam("receiverMobile")String receiverMobile,@RequestParam("receiverState")String receiverState,
                         @RequestParam("receiverCity")String receiverCity,@RequestParam("receiverDistrict")String receiverDistrict,
                         @RequestParam("receiverAddress")String receiverAddress){
        int data=1;

        //创建一个list存放购物车数据
        List cartList = new ArrayList();
        //将前台传过来的String类型的购物车id拆分
        String[] cidStrArray = cartId.split(",");
        for (int i = 0; i < cidStrArray.length; i++) {
//            System.err.println(cidStrArray[i]);
            long long_cid = Long.parseLong(cidStrArray[i]);
            //根据购物车id来查找购物车数据,并将购物车数据放到list里去
//            cartList.add(orderService.getCart(long_cid));
           CartItem cartItem= orderService.getCart(long_cid);
            //生成Order的ID
            Long orderId= IDUtils.getOrderId();


            //生成Order表,将数据放入
            Orders orders = new Orders();
            orders.setOrderId(orderId);
            orders.setPayment(payment);
            orders.setPaymentType(paymentType);
            orders.setPostFee(postFee);
            orders.setStatus(status);
            orders.setCreateTime(new Date());
            orders.setUpdateTime(new Date());
            if(paymentType==1){
                orders.setPaymentTime(new Date());
            }
            orders.setUserId(userId);
            orders.setShopId(cartItem.getShopId());

            //执行并判断是否成功插入order记录
            int a=orderService.insertOrder(orders);
            if(a==0){data=0;}

            //生成OrderItem表,将数据放入
            OrderItem orderItem = new OrderItem();
            orderItem.setId(IDUtils.getOrderItemId());
            orderItem.setItemId(cartItem.getItemId());
            orderItem.setOrderId(orderId);
            orderItem.setNum(cartItem.getQuantity());
            orderItem.setTitle(cartItem.getTitle());
            orderItem.setPrice(cartItem.getPrice());
            orderItem.setTotalFee(cartItem.getPrice()*cartItem.getQuantity());
            orderItem.setPicPath(cartItem.getPic());

            //执行并判断是否成功插入orderItem记录
            int b=orderService.insertOrderItem(orderItem);
            if(b==0){data=0;}

            //生成OrderShipping表,将数据放入
            OrderShipping orderShipping = new OrderShipping();
            orderShipping.setOrderId(orderId);
            orderShipping.setReceiverName(receiverName);
            orderShipping.setReceiverMobile(receiverMobile);
            orderShipping.setReceiverState(receiverState);
            orderShipping.setReceiverCity(receiverCity);
            orderShipping.setReceiverDistrict(receiverDistrict);
            orderShipping.setReceiverAddress(receiverAddress);
            orderShipping.setCreated(new Date());
            orderShipping.setUpdated(new Date());

            //执行并判断是否成功插入orderShipping记录
            int c=orderService.insertOrderShipping(orderShipping);
            if(c==0){data=0;}

            //根据购物车id删除购物车记录
            int d = cartService.deleteCartItem(long_cid);
            if(d==0){data=0;}
        }


        return data;
    }




}
