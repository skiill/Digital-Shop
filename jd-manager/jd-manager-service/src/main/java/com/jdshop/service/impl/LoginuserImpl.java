package com.jdshop.service.impl;


import com.jdshop.dao.LoginCustomMapper;
import com.jdshop.pojo.po.User;
import com.jdshop.service.Loginuser;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

@Service
public class LoginuserImpl implements Loginuser{

    @Autowired
    private LoginCustomMapper ls;


    @Override
    public int loginU( String username, String password) {
        User user = ls.selectByNamePwd(username, password);
        int i=0;
        if(user!=null){
          i =1;
        }
        return i;
    }
}
