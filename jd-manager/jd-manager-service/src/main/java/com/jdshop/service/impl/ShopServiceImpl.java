package com.jdshop.service.impl;

import com.jdshop.dao.ShopMapper;
import com.jdshop.pojo.po.Shop;
import com.jdshop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopMapper shopMapper;
    @Override
    public Shop listShopById(Long id) {
        return  shopMapper.selectByPrimaryKey(id);

    }
}
