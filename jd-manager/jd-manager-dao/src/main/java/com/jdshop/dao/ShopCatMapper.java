package com.jdshop.dao;

import com.jdshop.pojo.po.ShopCat;
import com.jdshop.pojo.po.ShopCatExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ShopCatMapper {
    int countByExample(ShopCatExample example);

    int deleteByExample(ShopCatExample example);

    int deleteByPrimaryKey(Long id);

    int insert(ShopCat record);

    int insertSelective(ShopCat record);

    List<ShopCat> selectByExample(ShopCatExample example);

    ShopCat selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") ShopCat record, @Param("example") ShopCatExample example);

    int updateByExample(@Param("record") ShopCat record, @Param("example") ShopCatExample example);

    int updateByPrimaryKeySelective(ShopCat record);

    int updateByPrimaryKey(ShopCat record);
}