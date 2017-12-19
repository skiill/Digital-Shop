package com.jdshop.dao;



import com.jdshop.pojo.po.Orders;

import java.util.List;
import java.util.Map;

public interface OrderCustomMapper {
    //查询总个数
    int countItems(Map<String, Object> map);
    // 查询指定页码显示记录集合
    List<Orders> listOrdersByPage(Map<String, Object> map);
}
