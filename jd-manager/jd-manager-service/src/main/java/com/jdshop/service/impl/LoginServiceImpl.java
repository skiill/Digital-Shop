package com.jdshop.service.impl;

import com.jdshop.common.dto.MessageResult;
import com.jdshop.common.jedis.JedisClient;
import com.jdshop.common.util.JsonUtils;
import com.jdshop.dao.UserMapper;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.po.UserExample;
import com.jdshop.service.LoginService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.List;
import java.util.UUID;

@Service
public class LoginServiceImpl implements LoginService {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private UserMapper userDao;
    @Autowired
    private JedisClient jedisClient;

    @Override
    public MessageResult userLogin(String username, String password) {
        MessageResult mr = new MessageResult();
        try {
            UserExample example = new UserExample();
            UserExample.Criteria criteria = example.createCriteria();
            criteria.andUsernameEqualTo(username);
            List<User> list = userDao.selectByExample(example);
            if (list == null && list.size () == 0){
                mr.setSuccess(false);
                mr.setMessage("用户名不存在");
                return mr;
            }
            User user = list.get(0);
            String md5Pwd = DigestUtils.md5DigestAsHex(password.getBytes());
            if(!md5Pwd.equals(user.getPassword())){
                mr.setSuccess(false);
                mr.setMessage("用户名或者密码错误");
                return mr;
            }
            String token = UUID.randomUUID().toString();
            user.setPassword(null);
            jedisClient.set("TT_TOKEN:" + token, JsonUtils.objectToJson(user));
            jedisClient.expire("TT_TOKEN:" + token, 1800);
            //正确情况下返回MessageResult
            mr.setSuccess(true);
            mr.setMessage("登录成功");
            mr.setData(token);
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }
        return mr;
    }
}
