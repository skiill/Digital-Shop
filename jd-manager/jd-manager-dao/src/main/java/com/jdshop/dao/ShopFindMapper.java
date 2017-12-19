package com.jdshop.dao;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.vo.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShopFindMapper {
    int selectcount(long shopid);

    List<Item> selectByPage(@Param("page") Page page, @Param("shopid") long shopid);
}
