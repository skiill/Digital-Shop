package com.jdshop.service;

import com.jdshop.common.util.Page;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.vo.ItemProduct;
import com.jdshop.pojo.vo.Result;


import java.util.List;

public interface listProduct {

    Result<Item> selectByPage(Page page, ItemProduct ip);

    List<Item> selectAll();

    int removeProduct(List<Long> ids);

    int upProduct(List<Long> ids);

    int downProduct(List<Long> ids);

    int updateProduct(Item item);
}
