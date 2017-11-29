package com.jdshop.service.impl;

import com.jdshop.common.jedis.JedisClient;
import com.jdshop.common.util.JsonUtils;
import com.jdshop.dao.ContentMapper;
import com.jdshop.pojo.po.Content;
import com.jdshop.pojo.po.ContentExample;
import com.jdshop.service.ContentService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ContentServiceImpl implements ContentService {

    Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ContentMapper contentMapper;

    @Autowired
    private JedisClient jedisClient;
    @Override
    public List<Content> listContentByCid(Long id) {
        List<Content> list = null;

        try{
            String json = jedisClient.hget("CONTENT_LIST",id+"");
            if (StringUtils.isNotBlank(json)){
                return JsonUtils.jsonToList(json,Content.class);
            }
        }catch (Exception e){
           logger.error(e.getMessage(),e);
        }
        ContentExample example = new ContentExample();
        ContentExample.Criteria criteria = example.createCriteria();
        criteria.andCategoryIdEqualTo(id);
        list = contentMapper.selectByExample(example);
        try{
            jedisClient.hset("CONTENT_LIST",id+"", JsonUtils.objectToJson(list));
        }catch (Exception e){
            logger.error(e.getMessage(),e);
        }

        return list;
    }
}
