package com.jdshop.dao;

import com.jdshop.pojo.vo.TbItemSearchCustom;
import com.jdshop.pojo.vo.TbSearchItemResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * User: DHC
 * Date: 2017/11/3
 * Time: 15:15
 * Version:V1.0
 * 注意需要注入
 */
@Repository
public class SearchItemDao {
    @Autowired
    private SolrServer solrServer;

    public TbSearchItemResult search(SolrQuery query) throws Exception{
        //根据query查询索引库
        QueryResponse queryResponse = solrServer.query(query);
        //取查询结果。
        SolrDocumentList solrDocumentList = queryResponse.getResults();
        //取查询结果总记录数
        long numFound = solrDocumentList.getNumFound();
        TbSearchItemResult result = new TbSearchItemResult();
        result.setRecordCount(numFound);
        //取商品列表，需要取高亮显示
        Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
        List<TbItemSearchCustom> itemList = new ArrayList<>();
        for (SolrDocument solrDocument : solrDocumentList) {
            TbItemSearchCustom item = new TbItemSearchCustom();
            item.setId((String) solrDocument.get("id"));
            item.setCatName((String) solrDocument.get("item_category_name"));
            item.setImage((String) solrDocument.get("item_image"));
            item.setPrice((long) solrDocument.get("item_price"));
            item.setSellPoint((String) solrDocument.get("item_sell_point"));
            //取高亮显示
            List<String> list = highlighting.get(solrDocument.get("id")).get("item_title");
            String title = "";
            if (list != null && list.size() > 0) {
                title = list.get(0);
            } else {
                title = (String) solrDocument.get("item_title");
            }
            item.setTitle(title);
            //添加到商品列表
            itemList.add(item);
        }
        result.setItemList(itemList);
        //返回结果
        return result;
    }

}
