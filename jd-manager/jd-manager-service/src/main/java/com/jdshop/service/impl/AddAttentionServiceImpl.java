package com.jdshop.service.impl;

import com.jdshop.common.util.JsonUtils;
import com.jdshop.dao.AddAttentionMapper;

import com.jdshop.pojo.po.UserWithBLOBs;

import com.jdshop.service.AddAttentionService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class AddAttentionServiceImpl implements AddAttentionService {

    @Autowired
    private AddAttentionMapper addAttentionMapper;

    @Override
    public int additemattention(long userid, Long itemid) {
        UserWithBLOBs userWithBLOBs=addAttentionMapper.selectUserItemAttention(userid);
        String json = userWithBLOBs.getItemAttention();
        List<Long> ids = JsonUtils.jsonToList(json, Long.class);
        if (json!=null&&json!="") {
            for (Long id : ids) {
                if (id==itemid){
                    return 0;
                }
            }
            ids.add(itemid);
        }else{
            ids.add(itemid);
        }
        json=JsonUtils.objectToJson(ids);
        System.out.println("json~~~~"+json);
        userWithBLOBs.setId(userid);
        userWithBLOBs.setItemAttention(json);
        int count=addAttentionMapper.AddUserItemAttention(userWithBLOBs);
        return count;
    }

    @Override
    public int addshopattention(long userid, Long shopid) {
        UserWithBLOBs userWithBLOBs=addAttentionMapper.selectUserShopAttention(userid);
        String json = userWithBLOBs.getShopAttention();
        List<Long> ids = JsonUtils.jsonToList(json, Long.class);
        List<Long> ids1=new ArrayList<>();
        if (json!=null&&json!="") {
            for (Long id : ids) {
                if (id==shopid){
                    return 0;
                }
            }
            ids.add(shopid);
        }else{
            ids1.add(shopid);
        }
        json=JsonUtils.objectToJson(ids1);
        System.out.println("json~~~~"+json);
        userWithBLOBs.setId(userid);
        userWithBLOBs.setShopAttention(json);
        int count=addAttentionMapper.AddUserShopAttention(userWithBLOBs);
        return count;
    }
}
