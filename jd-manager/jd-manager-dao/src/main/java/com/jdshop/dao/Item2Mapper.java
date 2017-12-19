package com.jdshop.dao;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.ItemDesc;

public interface Item2Mapper {

    Item selectById(Long id);

    ItemDesc selectitemdec(Long id);
}
