package com.jdshop.web;




import com.jdshop.pojo.po.Orders;
import com.jdshop.pojo.vo.OrderProduct;
import com.jdshop.pojo.vo.Page;
import com.jdshop.pojo.vo.Result;
import com.jdshop.service.ListOrder;

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
public class ListOrderAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ListOrder lo;

    @RequestMapping("/listOrders")
    @ResponseBody
    public Result<Orders> listOrders(Page page, OrderProduct op) {
        Result<Orders> result=null;
        try {
            System.out.println(op.getCreateTime());
            result=lo.selectByPage(page,op);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping(value = "/removeOrder" ,method = RequestMethod.POST)
    @ResponseBody
    public int removeProduct(@RequestParam("ids[]") List<Long> ids){
        return lo.removeOrder(ids);
    }

    //修改
    @RequestMapping(value = "/updateOrder")
    @ResponseBody
    public int updateOrder(Orders order){
        return lo.updateOrder(order);
    }
}
