package com.jdshop.service;




import com.jdshop.pojo.po.Orders;
import com.jdshop.pojo.vo.OrderProduct;
import com.jdshop.pojo.vo.Page;
import com.jdshop.pojo.vo.Result;

import java.util.List;

public interface ListOrder {

    Result<Orders> selectByPage(Page page, OrderProduct op);

    int removeOrder(List<Long> ids);

    int updateOrder(Orders order);
}
