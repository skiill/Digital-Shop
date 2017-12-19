package com.jdshop.web;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.ShopWithBLOBs;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.OrderManagerView;
import com.jdshop.service.PersonCollectionService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class personConllectionAction {
    @Autowired
    private PersonCollectionService personCollectionService;


    @RequestMapping("/collectionItem")
    public ModelAndView collectionItem(ModelAndView mv, HttpSession session) {
        UserWithBLOBs user = (UserWithBLOBs) session.getAttribute("userWithBLOBs");
        //得到缓存用户中的关注商品id字符串
        String idsStr = user.getItemAttention();
        List<Item> itemAttentions=null;
        //通过商品id得到商品
        if(StringUtils.isNotBlank(idsStr))
         itemAttentions= personCollectionService.getByItemId(idsStr);

        mv.setViewName("collectionItem");
        mv.addObject("itemAttentions", itemAttentions);

        return mv;
    }

    @RequestMapping("/collectionShop")
    public ModelAndView collectionShop(ModelAndView mv, HttpSession session) {
        UserWithBLOBs user = (UserWithBLOBs) session.getAttribute("userWithBLOBs");
        //得到缓存用户中的关注店铺id字符串
        List<ShopWithBLOBs> shopAttentions = null;
        String idsStr = user.getShopAttention();

        if (StringUtils.isNotBlank(idsStr)) {
            //通过商品id得到店铺
           shopAttentions = personCollectionService.getByShopId(idsStr);
        }

        mv.setViewName("collectionShop");
        mv.addObject("shopAttentions", shopAttentions);

        return mv;
    }
}
