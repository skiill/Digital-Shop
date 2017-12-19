package com.jdshop.web;


import com.jdshop.pojo.po.*;
import com.jdshop.service.AddAttentionService;
import com.jdshop.service.ItemService;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ItemDetailAction  {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ItemService itemService;

    @Autowired
    private AddAttentionService addAttentionService;

    @RequestMapping("/itemaction")
    public String itemfind(Item item, Model model,HttpServletRequest request){
        HttpSession session = request.getSession();
        if (item==null||item.getId()==null){
            item= (Item) session.getAttribute("item");
        }
        item=itemService.finditem(item.getId());
        long l = Long.parseLong(item.getBarcode());
        session.setAttribute("shop",l);
        ItemDesc itemDesc=itemService.selectitemdec(item.getId());
        model.addAttribute("itemDesc",itemDesc.getItemDesc());
        model.addAttribute("item1",item);
        session.setAttribute("item",item);
        return "single";
    }

    @ResponseBody
    @RequestMapping("/addcart")
    public int addcart(Cart cart,HttpServletRequest request){
        HttpSession session = request.getSession();
        Long shopid= (Long) session.getAttribute("shop");
        User userSession = (User) session.getAttribute("user");
        long userid=userSession.getId();
        cart.setUserId(userid);
        cart.setShopId(shopid);
        System.err.println(cart.getShopId()+"shop.getId()"+cart.getUserId());
        int count=itemService.addCat(cart);

        if (count==1){
            return 1;
        }
        return 0;
    }


    @ResponseBody
    @RequestMapping("/itemattention")
    public String itemattention(Long itemId,HttpServletRequest request){
        HttpSession session = request.getSession();
        /*//获取用户id
        User user= (User) session.getAttribute("user");*/
        User userSession = (User) session.getAttribute("user");
        long id =userSession.getId();
        System.out.println(itemId);
        int count=addAttentionService.additemattention(id,itemId);
        System.out.println(itemId);
        if (count==1){
            return "SUCCESS";
        }
        return "error";
    }
}
