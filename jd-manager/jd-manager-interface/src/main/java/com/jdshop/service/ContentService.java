package com.jdshop.service;

import com.jdshop.pojo.po.Content;

import java.util.List;

/**
 * Time
 */
public interface ContentService {

    List<Content> listContentByCid(Long id);
}
