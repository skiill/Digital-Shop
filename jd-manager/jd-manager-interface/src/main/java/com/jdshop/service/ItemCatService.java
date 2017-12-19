package com.jdshop.service;

import com.jdshop.common.dto.TreeNode;

import java.util.List;

public interface ItemCatService {

    public List<TreeNode> listItemCats(Long parentId);
}
