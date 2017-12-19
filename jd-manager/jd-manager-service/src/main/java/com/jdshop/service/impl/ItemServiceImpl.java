package com.jdshop.service.impl;

import com.jdshop.dao.Item2Mapper;
import com.jdshop.dao.ItemMapper;
import com.jdshop.dao.NewCatMapper;
import com.jdshop.pojo.po.Cart;
import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.ItemDesc;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.vo.JsonUtils;
import com.jdshop.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private Item2Mapper item2Mapper;

    @Autowired
    private NewCatMapper newCatMapper;
    @Autowired
    private ItemMapper itemDao;


    @Override
    public Item finditem(Long id) {
       Item item=item2Mapper.selectById(id);
        return item;
    }

    @Override
    public ItemDesc selectitemdec(Long id) {
        ItemDesc itemDesc=item2Mapper.selectitemdec(id);
        return itemDesc;
    }

    @Override
    public int addCat(Cart cart) {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        long id=Long.parseLong(sdf.format(new Date()));
        cart.setId(id);
            cart.setUpdated(new Date());
            cart.setCreated(new Date());

        int i = newCatMapper.addCat(cart);
        return i;
    }

    @Override
    public List<Item> listItem() {
        List<Item> items = itemDao.selectByExample(null);
        return items;
    }
}
