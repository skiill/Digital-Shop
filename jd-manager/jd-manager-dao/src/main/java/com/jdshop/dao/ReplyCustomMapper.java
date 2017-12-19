package com.jdshop.dao;

import com.jdshop.pojo.po.Reply;
import com.jdshop.pojo.po.ReplyExample;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.ReplyCustom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyCustomMapper {

    ReplyCustom getByUid(Long uid);
}