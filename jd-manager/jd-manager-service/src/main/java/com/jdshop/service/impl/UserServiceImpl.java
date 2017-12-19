package com.jdshop.service.impl;

import com.jdshop.dao.UserMapper;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.po.UserExample;
import com.jdshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userDao;
    @Override
    public User login(String username, String password) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<User> users = userDao.selectByExample(example);
        for(User user : users){
            if(user.getPassword().equals(password)){
                return user;
            }
        }
        return null;
    }
}
