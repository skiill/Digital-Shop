package com.jdshop.service;

import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.AddressView;
import com.jdshop.pojo.vo.OrderManagerView;


import java.util.List;

public interface PersonService {
    //通过id查新用户及相关信息
    UserWithBLOBs getUserById(Long id);

    int modifyUser(UserWithBLOBs user);

    List<AddressView> selectAddress(UserWithBLOBs user);

    UserWithBLOBs uptateStatus(UserWithBLOBs uerWithBLOBs, Long aid);

    UserWithBLOBs insertAddress(UserWithBLOBs userWithBLOBs, AddressView addressView);

    UserWithBLOBs delAddress(UserWithBLOBs userSession, Long aid);

    UserWithBLOBs updateAddress(AddressView addressView, UserWithBLOBs user);

    List<OrderManagerView> listAllOrder(UserWithBLOBs user);

    int updateOrder(String name, Long orderid);


}
