package com.jdshop.service.impl;

import com.jdshop.common.util.Page;
import com.jdshop.common.util.Result;
import com.jdshop.dao.ShopCustomMapper;
import com.jdshop.dao.ShopMapper;

import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.ShopExample;
import com.jdshop.pojo.po.ShopWithBLOBs;
import com.jdshop.pojo.vo.ShopProduct;
import com.jdshop.service.ListShop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ListShopImpl implements ListShop{
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ShopMapper shopDao;
    @Autowired
    private ShopCustomMapper shopCustomMapper;

    @Override
    public Result<Shop> selectByPage(Page page , ShopProduct sp) {
        Result<Shop> result=null;
        try {
            Map<String,Object> map=new HashMap<String,Object>();
            map.put("page",page);
            map.put("sp",sp);
            int count=shopCustomMapper.countItems(map);
            List<Shop> list = shopCustomMapper.listShopByPage(map);
            result=new Result<>();
            result.setTotal(count);
            result.setRows(list);

        }catch (Exception e){
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int updateShop(Shop shop) {
       ShopExample example=new ShopExample();
        ShopExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(shop.getUserId());
        int i= shopDao.updateByExampleSelective((ShopWithBLOBs) shop,example);
        return i;
    }

    @Override
    public int removeShop(List<Long> ids) {
        ShopExample example=new ShopExample();
        ShopExample.Criteria criteria = example.createCriteria();
        criteria.andIdIn(ids);
        int i = shopDao.deleteByExample(example);
        return i;
    }
}
