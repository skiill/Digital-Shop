package com.jdshop.web;

import com.jdshop.service.Loginuser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginUserAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private Loginuser lu;

    @RequestMapping("/login")
    public String login(String username,String password){
        System.out.println(username+password);
        int i = lu.loginU(username, password);
        if(i>0){
            return "index";
        }else{
            return "login";
        }

    }

}
