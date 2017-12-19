package com.jdshop.web;

import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.vo.Page;
import com.jdshop.service.AddAttentionService;
import com.jdshop.service.ShopService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class StoreSearchAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private ShopService shopService;

    @Autowired
    private AddAttentionService addAttentionService;


    @RequestMapping("/storeaction")
    public String seachsore(Model model, Page page, Shop shop, HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer currentPage=1;

        if(page.getCurrentPage()!=null){
            currentPage = page.getCurrentPage();
        }
        try {
            long shop_id=shop.getId();
            page=shopService.findByPage(currentPage,shop_id);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        model.addAttribute("itemlist",page.getList());
        model.addAttribute("shopid",shop.getId());
        model.addAttribute("page",page);

        return "store";
    }
        @ResponseBody
        @RequestMapping("shopattention")
        public String shopattention(Long shopid,HttpServletRequest request){
            HttpSession session = request.getSession();
            User userSession = (User) session.getAttribute("user");
            long id =userSession.getId();
            System.out.println(shopid);
            int count=addAttentionService.addshopattention(id,shopid);
            if (count==1){
                return "SUCCESS";
            }
            return "error";
        }
}
