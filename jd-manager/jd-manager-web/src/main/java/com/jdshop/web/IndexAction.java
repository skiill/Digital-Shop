package com.jdshop.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexAction {
    @RequestMapping("/")
    public String index(){
        return "index";
    }
    @RequestMapping("/jumpTo")
    public String jumptio(@RequestParam("name")String name){
        return name;
    }
}
