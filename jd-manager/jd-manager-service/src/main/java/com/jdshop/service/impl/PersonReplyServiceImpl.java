package com.jdshop.service.impl;

import com.jdshop.dao.ReplyCustomMapper;
import com.jdshop.dao.ReplyMapper;
import com.jdshop.pojo.po.Reply;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.ReplyCustom;
import com.jdshop.service.PersonReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonReplyServiceImpl implements PersonReplyService{
    @Autowired
    private ReplyCustomMapper replyCustomMapper;
    @Override
    public ReplyCustom getByUid(UserWithBLOBs user) {
        ReplyCustom replyCustom= replyCustomMapper.getByUid(user.getId());
        return replyCustom;
    }
}
