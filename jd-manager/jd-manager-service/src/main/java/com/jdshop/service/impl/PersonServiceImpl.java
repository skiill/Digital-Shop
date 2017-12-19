package com.jdshop.service.impl;


import com.jdshop.common.util.IDUtils;
import com.jdshop.common.util.JsonUtils;
import com.jdshop.dao.OrderManagerMapper;

import com.jdshop.dao.OrdersMapper;
import com.jdshop.dao.UserMapper;

import com.jdshop.pojo.po.OrderItem;
import com.jdshop.pojo.po.Orders;
import com.jdshop.pojo.po.UserExample;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.AddressView;

import com.jdshop.pojo.vo.OrderManagerView;
import com.jdshop.service.PersonService;
import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {


    @Autowired
    private UserMapper userMapper;
    @Autowired
    private OrderManagerMapper orderManagerMapper;
    @Autowired
    private OrdersMapper orderMapper;

    @Override
    public UserWithBLOBs getUserById(Long id) {

        UserWithBLOBs userWithBLOBs = userMapper.selectByPrimaryKey(id);

        return userWithBLOBs;
    }

    @Override
    public int modifyUser(UserWithBLOBs user) {

        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(user.getId());
        user.setUpdated(new Date());

        return userMapper.updateByExampleSelective(user, example);
    }

    //查找地址
    @Override
    public List<AddressView> selectAddress(UserWithBLOBs user) {
        String receiverAddress = user.getReceiverAddress();

        if (StringUtils.isNotBlank(receiverAddress)) {
            List<AddressView> addressViews = JsonUtils.jsonToList(receiverAddress, AddressView.class);

            return addressViews;
        }
        return null;
    }


    @Override
    public UserWithBLOBs uptateStatus(UserWithBLOBs userWithBLOBs, Long aid) {
        String receiverAddress = userWithBLOBs.getReceiverAddress();

        if (StringUtils.isNotBlank(receiverAddress)) {
            AddressView addressViewStatus = null;
            List<AddressView> addressViews = JsonUtils.jsonToList(receiverAddress, AddressView.class);
            for (AddressView addressView : addressViews) {
                //将默认地址设置为普通地址
                if ("0".equals(addressView.getStatus())) {
                    addressView.setStatus("1");
                }
            }

            for (AddressView addressView : addressViews) {

                //将普通地址为设置默认地址
                if (addressView.getAid().equals(aid)) {
                    addressView.setStatus("0");
                    String modifyAddressStatus = JsonUtils.objectToJson(addressViews);
                    userWithBLOBs.setReceiverAddress(modifyAddressStatus);
                }
            }
            int count = updateByExample(userWithBLOBs);
            if (count != 0) {
                return userWithBLOBs;
            }
        }

        return null;
    }

    //新增地址
    @Override
    public UserWithBLOBs insertAddress(UserWithBLOBs userWithBLOBs, AddressView addressView) {
        String receiverAddress = userWithBLOBs.getReceiverAddress();

        List<AddressView> addressViews = new ArrayList<AddressView>();
        if (StringUtils.isNotBlank(receiverAddress)) {
            addressViews = JsonUtils.jsonToList(receiverAddress, AddressView.class);
        }

        addressView.setAid(IDUtils.getItemId());
        addressView.setStatus("1");
        addressViews.add(addressView);

        String newAdd = JsonUtils.objectToJson(addressViews);

        userWithBLOBs.setReceiverAddress(newAdd);

        //调用更新模版
        int count = updateByExample(userWithBLOBs);
        if (count == 1)
            return userWithBLOBs;
        return null;
    }

    //删除地址
    @Override
    public UserWithBLOBs delAddress(UserWithBLOBs userWithBLOBs, Long aid) {
        //取出地址字符串，转为AddressView
        String receiverAddress = userWithBLOBs.getReceiverAddress();
        List<AddressView> addressViews = JsonUtils.jsonToList(receiverAddress, AddressView.class);

        for (AddressView addressView : addressViews) {
            if (addressView.getAid().equals(aid)) {

                addressViews.remove(addressView);
                break;
            }
        }
        String delAddress = JsonUtils.objectToJson(addressViews);
        userWithBLOBs.setReceiverAddress(delAddress);
        //调用更新模版
        int count = updateByExample(userWithBLOBs);
        if (count == 1)
            return userWithBLOBs;
        return null;
    }

    //查询所有订单及相关信息
    @Override
    public List<OrderManagerView> listAllOrder(UserWithBLOBs user) {
        //记录总价钱
        Long total = 0L;
        //get所有订单的orderid
        //把该用户所有订单查询出来
        //List<Long> ids = orderManagerMapper.ListAllOrdersId();
        System.out.println(user.getId());
        List<OrderManagerView> orders = orderManagerMapper.listOrders(user.getId());
        System.out.println("用户所有的订单" + orders);
        for (int i = 0; i < orders.size(); i++) {
            //查询该订单下所有的订单项
            List<OrderItem> items = orderManagerMapper.listOrderItemsByOid(orders.get(i).getOrderId());
            for (OrderItem orderItem : items) {
                total += orderItem.getTotalFee();
            }
            orders.get(i).setTotalPrice(total);
            System.out.println("订单下所有的订单项" + total);
            orders.get(i).setOrderList(items);
        }

        //存编号相同的订单
//        List<OrderManagerView> ordersSameId=new ArrayList<>();
//        for (int i=0;i<ids.size();i++){
//            System.out.println(ids.get(i));
//            //得到订单编号相同的订单集合
//            List<OrderManagerView> orders = orderManagerMapper.selectById(ids.get(i));
//
//            //将集合存到订单集合内
//            ordersSameId.add(orders);
//        }


        return orders;
    }

    @Override
    public int updateOrder(String name, Long orderid) {
        Orders orderUpdate = orderMapper.selectByPrimaryKey(orderid);
        int statu = 0;
        //删除订单
        if ("delete".equals(name)) {
            statu = 6;
        }
        //确认收货
        if ("confirmRe".equals(name)) {
            statu = 5;
        }
        int count = orderMapper.updateByPrimaryKey(orderUpdate);
        //返回状态码
        if (count != 0)
            return statu;
        return 0;
    }

    //更新地址
    @Override
    public UserWithBLOBs updateAddress(AddressView addressViewNew,UserWithBLOBs userWithBLOBs) {
        //取出地址字符串，转为AddressView
        String receiverAddress = userWithBLOBs.getReceiverAddress();
        List<AddressView> addressViews = JsonUtils.jsonToList(receiverAddress, AddressView.class);

        for (AddressView addressView : addressViews) {
            if (addressView.getAid().equals(addressViewNew.getAid())) {
                addressViews.remove(addressView);
                break;
            }
        }
        addressViews.add(addressViewNew);

        String newAddress = JsonUtils.objectToJson(addressViews);
        System.out.println(newAddress);
        userWithBLOBs.setReceiverAddress(newAddress);
        //调用更新模版
        int count = updateByExample(userWithBLOBs);
        if (count == 1)
            return userWithBLOBs;
        return null;


    }

    //封装更新模版
    public int updateByExample(UserWithBLOBs userWithBLOBs) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(userWithBLOBs.getId());
        DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm");

        userWithBLOBs.setUpdated(new Date());
        int count = userMapper.updateByExampleSelective(userWithBLOBs, example);
        return count;
    }
}
