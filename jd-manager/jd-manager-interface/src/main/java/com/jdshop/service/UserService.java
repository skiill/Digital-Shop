package com.jdshop.service;

import com.jdshop.pojo.po.User;

public interface UserService {
    User login(String username, String password);
}
