package com.jdshop.service.impl;


import com.jdshop.common.util.Page;

import com.jdshop.dao.OrderCustomMapper;
import com.jdshop.dao.OrdersMapper;


import com.jdshop.pojo.po.Orders;
import com.jdshop.pojo.po.OrdersExample;
import com.jdshop.pojo.vo.OrderProduct;
import com.jdshop.pojo.vo.Result;
import com.jdshop.service.ListOrder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class listOrderImpl implements ListOrder{
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private OrdersMapper orderDao;
    @Autowired
    private OrderCustomMapper orderCustomMapper;



    @Override
    public Result<Orders> selectByPage(com.jdshop.pojo.vo.Page page, OrderProduct op) {
        Result<Orders> result=null;
        try {
            Map<String,Object> map=new HashMap<String,Object>();
            map.put("page",page);
            map.put("op",op);
            int count=orderCustomMapper.countItems(map);
            List<Orders> list = orderCustomMapper.listOrdersByPage(map);
            /*for(Order order:list){
                order.getCreateTime().toString("yyyy-MM-dd");
            }*/
            result=new Result<>();
            result.setTotal(count);
            result.setRows(list);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int removeOrder(List<Long> ids) {
        Orders record=new Orders();
        record.setStatus((Integer) 6);
        OrdersExample example=new OrdersExample();
        OrdersExample.Criteria criteria=example.createCriteria();
        criteria.andOrderIdIn(ids);
        return orderDao.updateByExampleSelective(record,example);
    }

    @Override
    public int updateOrder(Orders order) {

        OrdersExample example=new OrdersExample();
        OrdersExample.Criteria criteria = example.createCriteria();

        criteria.andUserIdEqualTo(order.getUserId());
        int i= orderDao.updateByExampleSelective(order,example);
        System.out.println(i);
        return i;
    }
}
