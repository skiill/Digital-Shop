package com.jdshop.dao;

import com.jdshop.pojo.po.Shop;
import com.jdshop.pojo.po.ShopExample;
import com.jdshop.pojo.po.ShopWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopMapper {
    int countByExample(ShopExample example);

    int deleteByExample(ShopExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ShopWithBLOBs record);

    int insertSelective(ShopWithBLOBs record);

    List<ShopWithBLOBs> selectByExampleWithBLOBs(ShopExample example);

    List<Shop> selectByExample(ShopExample example);

    ShopWithBLOBs selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ShopWithBLOBs record, @Param("example") ShopExample example);

    int updateByExampleWithBLOBs(@Param("record") ShopWithBLOBs record, @Param("example") ShopExample example);

    int updateByExample(@Param("record") Shop record, @Param("example") ShopExample example);

    int updateByPrimaryKeySelective(ShopWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ShopWithBLOBs record);

    int updateByPrimaryKey(Shop record);
}