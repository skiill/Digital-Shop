package com.jdshop.service;

import com.jdshop.common.util.Page;
import com.jdshop.common.util.Result;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.vo.ShopProduct;


import java.util.List;

public interface ListShop {
    Result<Shop> selectByPage(Page page, ShopProduct sp);

    int updateShop(Shop shop);

    int removeShop(List<Long> ids);
}
