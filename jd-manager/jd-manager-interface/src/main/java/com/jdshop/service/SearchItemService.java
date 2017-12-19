package com.jdshop.service;


import com.jdshop.pojo.vo.TbSearchItemResult;

public interface SearchItemService {
    boolean importAllItems();

    TbSearchItemResult search(String keyword, Integer page, int i) throws Exception;
}
