package com.jdshop.web;


import com.jdshop.common.util.Page;
import com.jdshop.common.util.Result;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.vo.ShopProduct;
import com.jdshop.service.ListShop;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class UserMessageAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ListShop ls;


    @RequestMapping("/userMessage")
    @ResponseBody
    public Result<Shop> listShops(Page page , ShopProduct sp) {
        Result<Shop> result=null;
        try {
            result=ls.selectByPage(page,sp);

        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    //修改
    @RequestMapping(value = "/updateShop")
    @ResponseBody
    public int updateShop(Shop shop){

        return ls.updateShop(shop);
    }


    @RequestMapping(value = "/removeShop",method = RequestMethod.POST)
    @ResponseBody
    public int removeshop(@RequestParam("ids[]") List<Long> ids){
        System.out.println(ids);

        return  ls.removeShop(ids);
    }

}
