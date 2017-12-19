package com.jdshop.web;

import com.jdshop.common.util.PropKit;
import com.jdshop.pojo.po.Content;

import com.jdshop.pojo.po.Item;
import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.vo.TbSearchItemResult;
import com.jdshop.service.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
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
    @Autowired
    private UserService userService;
    @Autowired
    private ItemService itemService;

    @RequestMapping("/")
    public String index(Model model,HttpSession session){
        Long id = PropKit.use("ftp.properties").getLong("ftp.gallery");
        List<Content> list = contentService.listContentByCid(id);
        //List<Item> items = itemService.listItem();
        //model.addAttribute("items",items);
        model.addAttribute("addlist",list);
        if(session.getAttribute("flag")==null){
            model.addAttribute("flag",0);
        }else{
        model.addAttribute("flag",session.getAttribute("flag"));
        }
        return "index";
    }
    @RequestMapping("/jumpTo")
    public String jumptio(@RequestParam("name")String name,@RequestParam("id")Long id,Model model){

        Shop shop = shopService.listShopById(id);
        model.addAttribute("shop",shop);
        if(id==0){
            return "redirect:/";
        }
        if(id==4){
            return "login";
        }
        if (id==5){
            return "singup";
        }
        if (id==6){
            return "cart";
        }
        if (id==7){
            return "singup";
        }
        return "redirect:/storeaction?id="+id;
    }
    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session){
        User user = userService.login(username,password);
        if(user!=null){
            session.setAttribute("user",user);
            session.setAttribute("flag",1);
            return "redirect:/?flag=1";
        }
        session.setAttribute("flag",0);
        return "login";
    }
    @RequestMapping("/reg")
    public String singup(){
        return "signup";
    }
    @RequestMapping("/search")
    public String portalIndex(String keyword, @RequestParam(defaultValue = "1") Integer page, Model model){


        try {
            if (keyword != null) {
                keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
                //从solr索引库中查询商品
                TbSearchItemResult searchResult = searchItemService.search(keyword, page, 6);
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
