package com.jdshop.web;
import com.jdshop.pojo.po.User;
import com.jdshop.pojo.po.UserWithBLOBs;
import com.jdshop.pojo.vo.AddressView;
import com.jdshop.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class personAction {
    @Autowired

    private PersonService personService;

    @RequestMapping("/personTo")
    public String personTo(@RequestParam("name") String name) {
        return name;
    }

    @RequestMapping("/toInFormation")
    public String getUserById(HttpSession session) {
        //获得用户信息
        //通过session的Id查询当前用户
        /*Long id = 1L;*/
        User userSession = (User) session.getAttribute("user");
        UserWithBLOBs userWithBLOBs = personService.getUserById(userSession.getId());
        session.setAttribute("userWithBLOBs", userWithBLOBs);

        return "information";
    }

    //修改用户
    @RequestMapping("/modify")
    public String modifyUser(HttpSession session, UserWithBLOBs user) {

        int count = personService.modifyUser(user);
        if (count == 1) {
            session.setAttribute("userWithBLOBs", user);
        }
        return "index";
    }

    //*************************地址****************
    //查询地址
    @RequestMapping("/personAddress")
    public String listAddress(HttpSession session) {
        UserWithBLOBs user = (UserWithBLOBs) session.getAttribute("userWithBLOBs");
        System.out.println(user.getReceiverAddress());
        List<AddressView> addressList = personService.selectAddress(user);
        if (addressList != null) {
            session.setAttribute("addressList", addressList);
        }

        return "address";
    }

    //修改默认地址
    @RequestMapping("/modifyStatus")
    public String modifyStatus(HttpSession session, @RequestParam("id") Long aid) {

        UserWithBLOBs userSession = (UserWithBLOBs) session.getAttribute("userWithBLOBs");

        UserWithBLOBs userWithBLOBs = personService.uptateStatus(userSession, aid);
        if (userWithBLOBs != null) {
            session.setAttribute("userWithBLOBs", userWithBLOBs);

        }
        return "forward:personAddress";
    }

    //添加地址
    @RequestMapping("person/insertAddress")
    @ResponseBody
    public int insertAddress(AddressView addressView, HttpSession session) {
        UserWithBLOBs userWithBLOBs = (UserWithBLOBs) session.getAttribute("userWithBLOBs");
        UserWithBLOBs userNew = personService.insertAddress(userWithBLOBs, addressView);
        if (userNew != null) {
            session.setAttribute("userWithBLOBs", userNew);
        }

        return 1;
    }

    //删除地址
    @RequestMapping("person/delAddress")
    @ResponseBody
    public int delAddress(HttpSession session, @RequestParam("aid") Long aid) {
        UserWithBLOBs userSession = (UserWithBLOBs) session.getAttribute("userWithBLOBs");
        UserWithBLOBs userWithBLOBs = personService.delAddress(userSession, aid);
        if (userWithBLOBs != null) {
            session.setAttribute("userWithBLOBs", userWithBLOBs);
        }
        return 1;
    }

    //修改地址
    @RequestMapping("person/modifyAddress")
    @ResponseBody
    public int modifyAddress(String address, Long aid,HttpSession session) {


        String pro = address.substring(0, address.lastIndexOf("省")) + "省";
        String city = address.substring(address.indexOf("省") + 1, address.lastIndexOf("市")) + "市";
        String dist = address.substring(address.indexOf("市") + 1, address.lastIndexOf("区")) + "区";
        String street = address.substring(address.indexOf("区") + 1);
        AddressView addressView = new AddressView();
        addressView.setProvince(pro);
        addressView.setCity(city);
        addressView.setDist(dist);
        addressView.setStreet(street);
        addressView.setAid(aid);
        addressView.setStatus("0");
        UserWithBLOBs user =(UserWithBLOBs) session.getAttribute("userWithBLOBs");
        UserWithBLOBs userWithBLOBs=personService.updateAddress(addressView,user);
        if (userWithBLOBs != null) {
            session.setAttribute("userWithBLOBs", userWithBLOBs);
            return 1;
        }
        return 0;
    }

}
