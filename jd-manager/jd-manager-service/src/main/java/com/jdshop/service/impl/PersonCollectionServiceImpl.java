package com.jdshop.service.impl;

import com.jdshop.common.util.JsonUtils;
import com.jdshop.dao.ItemMapper;
import com.jdshop.dao.ShopMapper;
import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.ShopWithBLOBs;
import com.jdshop.service.PersonCollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Service
public class PersonCollectionServiceImpl implements PersonCollectionService {

    @Autowired
    private ItemMapper itemMapper;
    @Autowired
    private ShopMapper shopMapper;

    @Override
    public List<Item> getByItemId(String idsStr) {
        List<Item> items = new ArrayList<>();
        Item item=null;
        List<Long> ids = JsonUtils.jsonToList(idsStr, Long.class);
        for (Long id : ids) {
            item = itemMapper.selectByPrimaryKey(id);
            items.add(item);
        }
        return items;
    }

    @Override
    public List<ShopWithBLOBs> getByShopId(String idsStr) {
        List<ShopWithBLOBs> shops = new ArrayList<>();
        ShopWithBLOBs shop =null;
        List<Long> ids = JsonUtils.jsonToList(idsStr, Long.class);
        for (Long id : ids) {
            shop = shopMapper.selectByPrimaryKey(id);
            shops.add(shop);
        }
        return shops;
    }
}
