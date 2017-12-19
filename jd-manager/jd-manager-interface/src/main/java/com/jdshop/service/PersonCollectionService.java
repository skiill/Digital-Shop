package com.jdshop.service;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.ShopWithBLOBs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface PersonCollectionService {
    List<Item> getByItemId(String idsStr);

    List<ShopWithBLOBs> getByShopId(String idsStr);
}
