<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1427047286@qq.com
  Date: 2017/11/25 0025
  Time: 11:19
  collectionItem我的店铺
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的收藏</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/colstyle.css" rel="stylesheet" type="text/css">

</head>
<jsp:include page="head.jsp"></jsp:include>
<body>
<!--头 -->


<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-collection">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> /
                        <small>My&nbsp;Collection</small>
                    </div>
                </div>
                <hr/>

                <div class="you-like">
                    <div class="s-bar">
                        我的店铺

                    </div>

                    <div class="s-content">
                        <c:if test="${shopAttentions==null}"><em>您还没有关注店铺</em></c:if>
                        <c:if test="${shopAttentions!=null}">
                        <c:forEach items="${shopAttentions}" var="shop">

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="${shop.shopLogo}"
                                             alt="${shop.shopDesc}"
                                             title="${shop.shopDesc}" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="${shop.shopDesc}">${shop.shopDesc}</a>
                                    </div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">店铺评分</em><em
                                                class="s-value">${shop.credit}</em></span>

                                    </div>
                                    <div class="s-extra-box">

                                        <span class="s-sales">关注人数: ${shop.attention}</span>
                                    </div>
                                </div>

                            </div>
                        </div>

                        </c:forEach>
                        </c:if>
                    </div>

                </div>
            </div>

        </div>
        <!--底部-->
        <div class="footer">


        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="toInFormation"><i class="am-icon-user"></i>个人中心</a>
            </li>
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li><a href="toInFormation">个人信息</a></li>
                    <li><a href="personTo?name=safety">安全设置</a></li>
                    <li><a href="address">地址管理</a></li>
                    <li><a href="personTo?name=cardlist">快捷支付</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的订单</p>
                <ul>
                    <li><a href="orderManager">订单管理</a></li>
                    <li><a href="cart?id=${userWithBLOBs.id}">购物车　</a></li>
                    <li><a href="comment">我的评价</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i>我的收藏</p>
                <ul>
                    <li  class="active"><a href="collectionShop">我的店铺</a></li>
                    <li><a href="collectionItem">我的宝贝</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>

</body>

</html>
