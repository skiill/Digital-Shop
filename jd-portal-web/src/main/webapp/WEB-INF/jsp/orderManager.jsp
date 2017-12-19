<%--
  Created by IntelliJ IDEA.
  User: 1427047286@qq.com
  Date: 2017/11/23 0023
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>订单管理</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/orstyle.css" rel="stylesheet" type="text/css">

    <script src="js/jquery.min.js"></script>
    <script src="js/amazeui.js"></script>

</head>
<jsp:include page="head.jsp"></jsp:include>
<body>
<!--头 -->


<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-order">

                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> /
                        <small>Order</small>
                    </div>
                </div>
                <hr/>

                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">所有订单</a></li>
                        <li><a href="#tab2">待付款</a></li>
                        <li><a href="#tab3">待发货</a></li>
                        <li><a href="#tab4">待收货</a></li>
                        <li><a href="#tab5">待评价</a></li>
                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">

                                    <!--所有订单-->
                                    <c:forEach items="${personOrders}" var="order">
                                        <div class="order-status5">
                                            <div class="order-title">

                                                <div class="dd-num">订单编号：<a
                                                        href="javascript:;">${order.orderId}</a></div>
                                                <span>成交时间：${order.createTime}</span>

                                            </div>

                                            <div class="order-content">
                                                <div class="order-left">
                                                    <c:forEach items="${order.orderList}" var="orderItem">

                                                        <ul class="item-list">
                                                            <li class="td td-item">
                                                                <div class="item-pic">
                                                                    <a href="#" class="J_MakePoint">
                                                                        <img src="${orderItem.picPath}"
                                                                             class="itempic J_ItemImg">
                                                                    </a>
                                                                </div>
                                                                <div class="item-info">
                                                                    <div class="item-basic-info">
                                                                        <a href="#">
                                                                            <p>${orderItem.title}</p>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="td td-price">
                                                                <div class="item-price">
                                                                        ${orderItem.price/100}
                                                                </div>
                                                            </li>
                                                            <li class="td td-number">
                                                                <div class="item-number">
                                                                    <span>×</span>${orderItem.num}
                                                                </div>
                                                            </li>
                                                            <li class="td td-operation">
                                                                <div class="item-operation">

                                                                </div>
                                                            </li>
                                                        </ul>

                                                    </c:forEach>


                                                </div>
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：${order.totalPrice/100}
                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                    <%--1、未付款，3、未发货，4、已发货，5、交易成功，6、交易关闭--%>
                                                                <c:if test="${order.status==1}">
                                                                    <p class="Mystatus">未付款</p>
                                                                </c:if>
                                                                <c:if test="${order.status==3}">
                                                                    <p class="Mystatus">未发货</p>
                                                                </c:if>
                                                                <c:if test="${order.status==4}">
                                                                    <p class="Mystatus">已发货</p>
                                                                </c:if>
                                                                <c:if test="${order.status==5}">
                                                                    <p class="Mystatus">交易成功</p>
                                                                </c:if>

                                                            </div>
                                                        </li>
                                                            <%-- 未付款--%>
                                                        <c:if test="${order.status==1}">
                                                            <li class="td td-change">
                                                                <a href="personTo?name=pay">
                                                                    <div class="am-btn am-btn-danger anniu">
                                                                        一键支付
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </c:if>

                                                            <%--未发货--%>
                                                        <c:if test="${order.status==3}">
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu"
                                                                     onclick="updateOrder('message',${order.orderId})">
                                                                    提醒发货
                                                                </div>
                                                            </li>
                                                        </c:if>

                                                            <%--已发货--%>
                                                        <c:if test="${order.status==4}">
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu"
                                                                     onclick="updateOrder('confirmRe',${order.orderId})">
                                                                    确认收货
                                                                </div>
                                                            </li>
                                                        </c:if>
                                                            <%--交易成功--%>
                                                        <c:if test="${order.status==5}">
                                                            <li class="td td-change">

                                                                <a href="comment">
                                                                    <div class="am-btn am-btn-danger anniu"
                                                                         href="orderComment?order="+${order.shopId}>
                                                                        评价商品
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </c:if>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                </div>

                            </div>

                            <%-- tab2   ########################################################--%>

                            <%--待付款--%>
                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">

                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${personOrders}" var="order">
                                        <c:if test="${order.status==1}">
                                            <div class="order-status5">
                                                <div class="order-title">
                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:;">${order.orderId}</a></div>
                                                    <span>成交时间：${order.createTime}</span>

                                                </div>
                                                <div class="order-content">
                                                    <div class="order-left">
                                                        <c:forEach items="${order.orderList}" var="orderItem">

                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${orderItem.picPath}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${orderItem.title}</p>

                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${orderItem.price/100}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${orderItem.num}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">

                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>

                                                    </div>

                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${order.totalPrice/100}

                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">等待买家付款</p>
                                                                    <p class="order-info"
                                                                       onclick="updateOrder('delete',${order.orderId})">
                                                                        <a
                                                                                href="#">取消订单</a></p>

                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <a href="../../pay.html">
                                                                    <div class="am-btn am-btn-danger anniu" >
                                                                        一键支付
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </div>
                                                    </div>


                                                </div>

                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>

                            </div>
                        </div>
                        <%--tab3####################################################################################--%>
                        <!--待发货-->
                        <div class="am-tab-panel am-fade" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${personOrders}" var="order">
                                        <c:if test="${order.status==3}">
                                            <div class="order-status5">
                                                <div class="order-title">

                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:;">${order.orderId}</a></div>
                                                    <span>成交时间：${order.createTime}</span>

                                                </div>

                                                <div class="order-content">
                                                    <div class="order-left">


                                                        <c:forEach items="${order.orderList}" var="orderItem">

                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${orderItem.picPath}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${orderItem.title}</p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${orderItem.price/100}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${orderItem.num}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">

                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>


                                                    </div>

                                                    <div class="order-right">
                                                        <li class="td td-amount">
                                                            <div class="item-amount">
                                                                合计：${order.totalPrice/100}

                                                            </div>
                                                        </li>
                                                        <div class="move-right">
                                                            <li class="td td-status">
                                                                <div class="item-status">
                                                                    <p class="Mystatus">买家已付款</p>

                                                                </div>
                                                            </li>
                                                            <li class="td td-change">
                                                                <div class="am-btn am-btn-danger anniu"
                                                                     onclick="updateOrder('message',${order.orderId})">
                                                                    提醒发货
                                                                </div>
                                                            </li>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <%--tab4####################################################################################--%>

                        <!--待收货-->
                        <div class="am-tab-panel am-fade" id="tab4">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${personOrders}" var="order">
                                        <c:if test="${order.status==4}">
                                            <div class="order-status5">
                                                <div class="order-title">

                                                    <div class="dd-num">订单编号：<a
                                                            href="javascript:;">${order.orderId}</a></div>
                                                    <span>成交时间：${order.createTime}</span>

                                                </div>

                                                <div class="order-content">
                                                    <div class="order-left">


                                                        <c:forEach items="${order.orderList}" var="orderItem">

                                                            <ul class="item-list">
                                                                <li class="td td-item">
                                                                    <div class="item-pic">
                                                                        <a href="#" class="J_MakePoint">
                                                                            <img src="${orderItem.picPath}"
                                                                                 class="itempic J_ItemImg">
                                                                        </a>
                                                                    </div>
                                                                    <div class="item-info">
                                                                        <div class="item-basic-info">
                                                                            <a href="#">
                                                                                <p>${orderItem.title}</p>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="td td-price">
                                                                    <div class="item-price">
                                                                            ${orderItem.price/100}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-number">
                                                                    <div class="item-number">
                                                                        <span>×</span>${orderItem.num}
                                                                    </div>
                                                                </li>
                                                                <li class="td td-operation">
                                                                    <div class="item-operation">

                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </c:forEach>

                                                    </div>
                                                    <c:if test="${order.status==4}">
                                                        <div class="order-right">
                                                            <li class="td td-amount">
                                                                <div class="item-amount">
                                                                    合计：${order.totalPrice/100}

                                                                </div>
                                                            </li>
                                                            <div class="move-right">
                                                                <li class="td td-status">
                                                                    <div class="item-status">
                                                                        <p class="Mystatus">卖家已发货</p>
                                                                        <a href="logistics.html">查看物流</a></p>

                                                                    </div>
                                                                </li>
                                                                <li class="td td-change">
                                                                    <div class="am-btn am-btn-danger anniu"
                                                                         onclick="updateOrder('confirmRe',${order.orderId})">
                                                                        确认收货
                                                                    </div>
                                                                </li>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </div>

                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <%--tab5####################################################################################--%>
                        <!--待评价-->
                        <div class="am-tab-panel am-fade" id="tab5">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">商品</td>
                                </div>
                                <div class="th th-price">
                                    <td class="td-inner">单价</td>
                                </div>
                                <div class="th th-number">
                                    <td class="td-inner">数量</td>
                                </div>
                                <div class="th th-operation">
                                    <td class="td-inner">商品操作</td>
                                </div>
                                <div class="th th-amount">
                                    <td class="td-inner">合计</td>
                                </div>
                                <div class="th th-status">
                                    <td class="td-inner">交易状态</td>
                                </div>
                                <div class="th th-change">
                                    <td class="td-inner">交易操作</td>
                                </div>
                            </div>

                            <div class="order-main">
                                <div class="order-list">
                                    <c:forEach items="${personOrders}" var="order">
                                        <c:if test="${order.status==5}">
                                        <div class="order-status5">
                                        <div class="order-title">

                                            <div class="dd-num">订单编号：<a
                                                    href="javascript:;">${order.orderId}</a></div>
                                            <span>成交时间：${order.createTime}</span>

                                        </div>

                                        <div class="order-content">
                                        <div class="order-left">


                                            <c:forEach items="${order.orderList}" var="orderItem">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="${orderItem.picPath}"
                                                                     class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>${orderItem.title}</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${orderItem.price/100}RMB
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${orderItem.num}
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                            </c:forEach>

                                            </div>
                                            <c:if test="${order!=null}">
                                                <div class="order-right">
                                                    <li class="td td-amount">
                                                        <div class="item-amount">
                                                            合计：${order.totalPrice/100}

                                                        </div>
                                                    </li>
                                                    <div class="move-right">
                                                        <li class="td td-status">
                                                            <div class="item-status">
                                                                <p class="Mystatus">交易成功</p>
                                                            </div>
                                                        </li>
                                                        <li class="td td-change">

                                                            <div><p>　</p></div>
                                                            <a href="comment">
                                                                <div class="am-btn am-btn-danger anniu">
                                                                    我的评价
                                                                </div>
                                                            </a>

                                                        </li>
                                                    </div>
                                                </div>
                                            </c:if>
                                            </div>

                                            </div>
                                        </c:if>
                                    </c:forEach>

                                </div>

                            </div>

                        </div>
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
                    <li class="active"><a href="orderManager">订单管理</a></li>
                    <li><a href="cart?id=${userWithBLOBs.id}">购物车　</a></li>
                    <li><a href="comment">我的评价</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i>我的收藏</p>
                <ul>
                    <li><a href="collectionShop">我的店铺</a></li>
                    <li><a href="collectionItem">我的宝贝</a></li>
                </ul>
            </li>
        </ul>
    </aside>
</div>

</body>
<script>

    //更新订单状态

    function updateOrder(name, orderid) {
        if (name == "message")
            alert("已提示商家");
        if (name == "delete")
            confirm("确认删除或取消订单？");


        $.post(
            //url:请求后台的哪个地址来进行处理，相当于url,String类型
            "updateOrder",
            //data:从前台提交哪些数据给后台处理，相当于data，Object类型
            {
                'uname': name,
                'orderid': orderid
            },
            //callback:后台处理成功的回调函数，相当于success，function类型
            function success(data) {
                if (data) {
                    //确认收货
                    if (data == 5) {
                        alert("确认收货成功");

                    }
                    //删除订单
                    if (data == 6) {
                        alert("删除订单成功");

                    }
                    window.location.href = 'orderManager'
                }
            },
            //dataType:返回的数据类型，如：json，String类型
            'json'
        );

    }


</script>

</html>