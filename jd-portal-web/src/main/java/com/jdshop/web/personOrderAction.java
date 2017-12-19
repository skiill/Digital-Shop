package com.jdshop.web;


import com.jdshop.pojo.po.Reply;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.OrderManagerView;
import com.jdshop.pojo.vo.ReplyCustom;
import com.jdshop.service.PersonReplyService;
import com.jdshop.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jms.Session;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class personOrderAction {
    @Autowired
    private PersonService personService;

    @Autowired
    private PersonReplyService personReplyService;


   @RequestMapping("/orderManager")
    public ModelAndView orderManager(ModelAndView mv, HttpSession session){
       UserWithBLOBs user =(UserWithBLOBs) session.getAttribute("userWithBLOBs");
       List<OrderManagerView> orderManagers=personService.listAllOrder(user);
       mv =new ModelAndView("orderManager") ;
       mv.addObject("personOrders",orderManagers);

       return  mv;
   }

   //更新订单状态
   @ResponseBody
    @RequestMapping("/updateOrder")
    public int deleteOrder(@RequestParam("name") String name,@RequestParam("orderid") Long orderid){

        int status=personService.updateOrder(name,orderid);


        return  status;
    }

    //查看该用户的订单评价
    @RequestMapping("/comment")
    public String getByUid(HttpSession session, Model model){
        UserWithBLOBs user =(UserWithBLOBs) session.getAttribute("userWithBLOBs");
        ReplyCustom replyByUid =  personReplyService.getByUid(user);
        System.out.println(replyByUid);
        model.addAttribute("replyByUid",replyByUid);
        return  "comment";
    }

}
