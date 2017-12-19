package com.jdshop.service;

import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.vo.Page;

import java.util.List;

public interface ShopService {
    public Shop listShopById(Long id);
    Page findByPage(Integer currentPage, long shop_id);
}
