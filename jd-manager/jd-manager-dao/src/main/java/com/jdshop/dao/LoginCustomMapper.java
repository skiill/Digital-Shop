package com.jdshop.dao;

import com.jdshop.pojo.po.User;
import org.apache.ibatis.annotations.Param;

public interface LoginCustomMapper {
    User selectByNamePwd(@Param("username") String username, @Param("password") String password);
}
