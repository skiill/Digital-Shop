package com.jdshop.sso.web;

import com.jdshop.common.dto.MessageResult;
import com.jdshop.service.TokenService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * User: DHC
 * Date: 2017/11/27
 * Time: 17:37
 * Version:V1.0
 */
@Controller
public class SSOTokenAction {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private TokenService tokenService;

    @ResponseBody
    @RequestMapping("/user/token1/{tokenId}")
    public MessageResult token1(@PathVariable("tokenId") String tokenId){
        MessageResult mr = null;
        try {
            mr = tokenService.getUserByToken(tokenId);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return mr;
    }
}
