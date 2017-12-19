package com.jdshop.pojo.vo;

import com.jdshop.pojo.po.Item;

import java.util.List;

/**
 * 封装分页请求的参数类
 * User: DHC
 * Date: 2017/11/7
 * Time: 14:02
 * Version:V1.0
 */
public class Page {
    private Integer currentPage; // 当前页数

    private Integer pageSize=4; // 每页显示记录的条数

    private Integer totalCount; // 总的记录条数

    private Integer totalPage; // 总的页数

    private Integer firstResult;

    private List<Item> list;  //当前页的记录

    private String title;

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public List<Item> getList() {
        return list;
    }

    public void setList(List<Item> list) {
        this.list = list;
    }



    public Integer getFirstResult() {
        return firstResult;
    }

    public void setFirstResult(Integer firstResult) {
        this.firstResult = firstResult;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


}
