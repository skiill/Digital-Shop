package com.jdshop.dao;

import com.jdshop.pojo.po.UserWithBLOBs;

public interface AddAttentionMapper {
    UserWithBLOBs selectUserItemAttention(long id);

    int AddUserItemAttention(UserWithBLOBs userWithBLOBs);

    int AddUserShopAttention(UserWithBLOBs userWithBLOBs);

    UserWithBLOBs selectUserShopAttention(long id);
}
