package com.jdshop.service;

import com.jdshop.pojo.po.Reply;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.ReplyCustom;

public interface PersonReplyService {
    ReplyCustom getByUid(UserWithBLOBs user);
}
