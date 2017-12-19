package com.jdshop.web;

import com.jdshop.common.dto.MessageResult;
import com.jdshop.service.SearchItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class IndexAction {
    @Autowired
    private SearchItemService searchItemService;

    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/jumpTo")
    public String jumptio(@RequestParam("name")String name){
        return name;
    }
    @RequestMapping("/item/search/import")
    public MessageResult searchItemIndex(){

        //通过调用service层方法将采集到的数据导入到索引库
        boolean bool = searchItemService.importAllItems();
        MessageResult mr = new MessageResult();
        if (bool) {
            mr.setSuccess(true);
            mr.setMessage("索引导入成功");
        }else {
            mr.setSuccess(false);
            mr.setMessage("索引导入失败");
        }
        return mr;
    }
}
