package com.jdshop.sso.web;


import com.jdshop.common.dto.MessageResult;
import com.jdshop.common.util.CookieUtils;
import com.jdshop.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * User: DHC
 * Date: 2017/11/27
 * Time: 16:18
 * Version:V1.0
 */
@Controller
public class SSOLoginAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private LoginService loginService;

    @ResponseBody
    @RequestMapping("/user/login")
    public MessageResult login(String username, String password, HttpServletRequest request, HttpServletResponse response) {
        MessageResult mr = null;
        try {
            //调用业务逻辑层方法进行登录
            mr = loginService.userLogin(username,password);
            if (mr.isSuccess()){
                //登录成功
                String token = mr.getData().toString();
                //写入cookie
                CookieUtils.setCookie(request,response,"tt_token",token);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return mr;
    }
}
