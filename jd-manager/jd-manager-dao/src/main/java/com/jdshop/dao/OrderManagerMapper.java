package com.jdshop.dao;

import com.jdshop.pojo.po.OrderItem;
import com.jdshop.pojo.vo.OrderManagerView;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderManagerMapper {

   /* //得到不同的订单编号
    List<Long> ListAllOrdersId();

    //得到订单编号相同的订单集合
    List<OrderManagerView> selectById(Long id);*/

    //得到所有订单

    List<OrderManagerView> listOrders(@Param("uid") Long id);

    //查询该订单下所有的订单项
    List<OrderItem> listOrderItemsByOid(@Param("orderId")Long orderId);
}
