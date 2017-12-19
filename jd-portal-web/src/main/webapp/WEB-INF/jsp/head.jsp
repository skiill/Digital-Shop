<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/22
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="banner-strip-lft">
    <div class="container">
        <div class="bann-head">
            <a href="jumpTo?name=index&id=0&flag=${flag}"><img src="images/logo.png" alt=""/></a>
            <ul  class="bann-list">
                <li><a href="jumpTo?name=store&id=1">手机</a></li>
                <li><a href="jumpTo?name=store&id=2">电脑</a></li>
                <li><a href="jumpTo?name=store&id=3">相机</a></li>

            </ul>
        </div>
    </div>
</div>
<div class="banner-strip-rit">
    <div class="bann-contact">

            <form action="search">
                <div class="search">
            <input id="keyword" name="keyword" type="text" value="${query}"/>
            <input id="search" type="submit" value=""/>
                </div>
            </form>


        <ul>
            <c:if test="${flag==0}">
            <li ><a href="jumpTo?name=signup&id=5">注册</a></li>
            <li ><a href="jumpTo?name=login&id=4">登录</a></li>
            </c:if>
            <c:if test="${flag==1}">
            <li ><a href="toInFormation">${user.username}</a></li>
            <li ><a href="cart?id=${user.id}">购物车</a></li>
            <li ><a href="jumpTo?name=signup">收藏夹</a></li>
            </c:if>

        </ul>
    </div>

</div>
<div class="clearfix"> </div>
<div>


</div>
