package com.jdshop.web;

import com.jdshop.common.util.PropKit;
import com.jdshop.pojo.po.Content;

import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.vo.TbSearchItemResult;
import com.jdshop.service.ContentService;
import com.jdshop.service.SearchItemService;
import com.jdshop.service.ShopService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PortalIndexAction {

    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ContentService contentService;
    @Autowired
    private ShopService shopService;
    @Autowired
    private SearchItemService searchItemService;

    @RequestMapping("/")
    public String index(Model model){
        Long id = PropKit.use("ftp.properties").getLong("ftp.gallery");
        List<Content> list = contentService.listContentByCid(id);
        model.addAttribute("addlist",list);
        return "index";
    }
    @RequestMapping("/jumpTo")
    public String jumptio(@RequestParam("name")String name,@RequestParam("id")Long id,Model model){

        Shop shop = shopService.listShopById(id);
        model.addAttribute("shop",shop);
        return name;
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/search")
    public String portalIndex(String keyword, @RequestParam(defaultValue = "1") Integer page, Model model){


        try {
            if (keyword != null) {
                keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
                //从solr索引库中查询商品
                TbSearchItemResult searchResult = searchItemService.search("手机", page, 60);
                //把结果传递给页面
                model.addAttribute("query", keyword);
                model.addAttribute("totalPages", searchResult.getTotalPages());
                model.addAttribute("page", page);
                model.addAttribute("recourdCount", searchResult.getRecordCount());
                model.addAttribute("itemList", searchResult.getItemList());

            }
        } catch (Exception e){
            logger.error(e.getMessage(), e);
        }

        return "search";
    }
}
