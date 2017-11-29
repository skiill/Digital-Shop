package com.jdshop.service;

import com.jdshop.common.dto.MessageResult;

public interface LoginService {
    MessageResult userLogin(String username, String password);
}
