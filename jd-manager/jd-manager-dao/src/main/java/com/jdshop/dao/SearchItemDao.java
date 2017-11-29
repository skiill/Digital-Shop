package com.jdshop.dao;

import com.jdshop.pojo.vo.TbItemSearchCustom;
import com.jdshop.pojo.vo.TbSearchItemResult;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * User: DHC
 * Date: 2017/11/23
 * Time: 10:04
 * Version:V1.0
 */
@Repository
public class SearchItemDao {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SolrServer solrServer;

    public TbSearchItemResult search(SolrQuery query) {
        TbSearchItemResult result = null;
        try {
            //根据query查询索引库
            QueryResponse queryResponse = solrServer.query(query);
            //取查询结果。得到索引库中文档域对象
            SolrDocumentList solrDocumentList = queryResponse.getResults();
            //取查询结果总记录数。对应solr后台查询结果中numFound
            long numFound = solrDocumentList.getNumFound();
            result = new TbSearchItemResult();
            result.setRecordCount(numFound);
            //取商品列表，需要取高亮显示
            Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
            List<TbItemSearchCustom> itemList = new ArrayList<>();
            //遍历文档域对象
            for (SolrDocument solrDocument : solrDocumentList) {
                TbItemSearchCustom item = new TbItemSearchCustom();
                item.setId((String) solrDocument.get("id"));
                item.setCatName((String) solrDocument.get("item_category_name"));
                item.setImage((String) solrDocument.get("item_image"));
                item.setPrice((long) solrDocument.get("item_price"));
                item.setSellPoint((String) solrDocument.get("item_sell_point"));
                //取高亮显示
//                {
//                    "1039296": {
//                    "item_title": [
//                    "合约惠<em style=\"color:red\">机</em>测试<em style=\"color:red\">手机</em>（请勿下单）"
//                        ]
//                }}
                List<String> list = highlighting.get(solrDocument.get("id")).get("item_title");
                String title = "";
                if (list != null && list.size() > 0) {
                    //高亮部分
                    title = list.get(0);
                } else {
                    //无高亮部分
                    title = (String) solrDocument.get("item_title");
                }
                item.setTitle(title);
                //添加到商品列表
                itemList.add(item);
            }
            result.setItemList(itemList);
        } catch (Exception e){
            logger.error(e.getMessage(), e);
        }
        //返回结果
        return result;
    }
}
