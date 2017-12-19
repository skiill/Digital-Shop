package com.jdshop.service.impl;

import com.jdshop.common.dto.TreeNode;
import com.jdshop.dao.ItemCatMapper;
import com.jdshop.pojo.po.ItemCat;
import com.jdshop.pojo.po.ItemCatExample;
import com.jdshop.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;
@Service
public class ItemCatServiceImpl implements ItemCatService{
    @Autowired
    private ItemCatMapper itemCatMapper;
    @Override
    public List<TreeNode> listItemCats(Long parentId) {
        //创建查询模板
        ItemCatExample example=new ItemCatExample();
        ItemCatExample.Criteria criteria=example.createCriteria();
        criteria.andParentIdEqualTo(parentId);
        //执行查询
        List<ItemCat> list=itemCatMapper.selectByExample(example);
        List<TreeNode> resultList=new ArrayList<TreeNode>();
        //遍历原有集合
        for(int i=0;i<list.size();i++){
            TreeNode node=new TreeNode();
            node.setId(list.get(i).getId());
            node.setText(list.get(i).getName());
            node.setState(list.get(i).getIsParent() ? "closed" : "open");
            resultList.add(node);

        }

        return resultList;
    }
}
