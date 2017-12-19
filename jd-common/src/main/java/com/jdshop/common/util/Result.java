package com.jdshop.common.util;

import java.util.List;

public class Result<T> {
//    符合条件的总数
    private long total;
    //    指定页码记录集合
    private List<T> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
