package com.jdshop.service;

import com.jdshop.common.dto.MessageResult;
import org.springframework.stereotype.Service;

@Service
public interface TokenService {
    MessageResult getUserByToken(String tokenId);
}
