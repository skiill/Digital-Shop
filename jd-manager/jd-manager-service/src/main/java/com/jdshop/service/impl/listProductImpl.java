package com.jdshop.service.impl;

import com.jdshop.common.util.Page;
import com.jdshop.dao.ItemCustomMapper;
import com.jdshop.dao.ItemMapper;
import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.ItemExample;
import com.jdshop.pojo.vo.ItemProduct;
import com.jdshop.pojo.vo.Result;
import com.jdshop.service.listProduct;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class listProductImpl implements listProduct {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ItemMapper itemDao;
    @Autowired
    private ItemCustomMapper itemCustomDao;
    @Override
    public Result<Item> selectByPage(Page page, ItemProduct ip) {
        Result<Item> result=null;
        try {
            Map<String,Object> map=new HashMap<String,Object>();
            map.put("page",page);
            map.put("ip",ip);
            int count=itemCustomDao.countItems(map);
            List<Item> list = itemCustomDao.listItemsByPage(map);
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
    public int removeProduct(List<Long> ids) {
        Item record=new Item();
        record.setStatus((byte)3);
        ItemExample example=new ItemExample();
        ItemExample.Criteria criteria=example.createCriteria();
        criteria.andIdIn(ids);

        return itemDao.updateByExampleSelective(record,example);
    }

    @Override
    public int upProduct(List<Long> ids) {
        Item record=new Item();
        record.setStatus((byte)1);
        ItemExample example=new ItemExample();
        ItemExample.Criteria criteria=example.createCriteria();
        criteria.andIdIn(ids);
        return itemDao.updateByExampleSelective(record,example);
    }

    @Override
    public int downProduct(List<Long> ids) {
        Item record=new Item();
        record.setStatus((byte)2);
        ItemExample example=new ItemExample();
        ItemExample.Criteria criteria=example.createCriteria();
        criteria.andIdIn(ids);
        return itemDao.updateByExampleSelective(record,example);
    }

    @Override
    public int updateProduct(Item item) {
        ItemExample example=new ItemExample();
        ItemExample.Criteria criteria = example.createCriteria();
        criteria.andCidEqualTo(item.getCid());
        int i= itemDao.updateByExampleSelective(item,example);

        return i;
    }

    @Override
    public List<Item> selectAll() {
        return itemDao.selectByExample(null);
    }



}
