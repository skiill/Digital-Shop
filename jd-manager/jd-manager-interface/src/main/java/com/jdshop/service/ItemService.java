package com.jdshop.service;

import com.jdshop.pojo.po.Cart;
import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.ItemDesc;

import java.util.List;

public interface ItemService {

    Item finditem(Long id);

    ItemDesc selectitemdec(Long id);

    int addCat(Cart cart);


    List<Item> listItem();
}
