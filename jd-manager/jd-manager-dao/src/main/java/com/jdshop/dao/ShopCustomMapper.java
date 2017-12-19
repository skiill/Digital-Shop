package com.jdshop.dao;

import com.jdshop.pojo.po.Shop;

import java.util.List;
import java.util.Map;

public interface ShopCustomMapper {
    //查询总个数
    int countItems(Map<String, Object> map);
    // 查询指定页码显示记录集合
    List<Shop> listShopByPage(Map<String, Object> map);

}
