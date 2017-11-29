package com.jdshop.sso.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * User: DHC
 * Date: 2017/11/27
 * Time: 11:31
 * Version:V1.0
 */
@Controller
public class SSOIndexAction {

    @RequestMapping("/")
    public String index(){
        return "login";
    }
}
