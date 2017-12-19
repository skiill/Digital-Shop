package com.jdshop.pojo.vo;

import com.jdshop.pojo.po.Reply;
import com.sun.org.apache.regexp.internal.RE;

public class ReplyCustom extends Reply {
    //商品title
    private String title;
    //商品图片路径
    private String itemPic;

    public String getItemPic() {
        return itemPic;
    }

    public void setItemPic(String itemPic) {
        this.itemPic = itemPic;
    }

    public String getTitle() {

        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "ReplyCustom{" +
                "title='" + title + '\'' +
                ", itemPic='" + itemPic + '\'' +
                '}';
    }
}
