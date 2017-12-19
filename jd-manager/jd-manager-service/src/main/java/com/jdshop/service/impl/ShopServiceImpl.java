package com.jdshop.service.impl;

import com.jdshop.dao.ShopFindMapper;
import com.jdshop.dao.ShopMapper;
import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.vo.Page;
import com.jdshop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopFindMapper shopFindDao;
    @Autowired
    private ShopMapper shopMapper;
    @Override
    public Page findByPage(Integer currentPage, long shop_id) {
        Page page=new Page();
        page.setCurrentPage(currentPage);
        page.setFirstResult((page.getPageSize()*(currentPage-1)));
        System.out.println(page.getFirstResult()+"impl~~~");
        System.out.println(shop_id+"ShopServiceImpl");
        int count=shopFindDao.selectcount(shop_id);
        System.out.println(count+"shusssdis");
        List<Item> list=shopFindDao.selectByPage(page,shop_id);
        int totalpage=count/page.getPageSize();
        page.setTotalCount(count);
        page.setTotalPage((count%page.getPageSize()==0)?(count/page.getPageSize()):(count/page.getPageSize()+1));
        page.setList(list);
        return page;
    }

    @Override
    public Shop listShopById(Long id) {
        return  shopMapper.selectByPrimaryKey(id);
    }
}
