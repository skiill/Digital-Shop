<%--
  Created by IntelliJ IDEA.
  User: 1427047286@qq.com
  Date: 2017/11/24 0024
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>评价管理</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/cmstyle.css" rel="stylesheet" type="text/css">

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

            <div class="user-comment">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的评价</strong> / <small>Comment</small></div>
                </div>
                <hr/>
                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                    <ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
                        <li class="am-active"><a href="#tab1">所有评价</a></li>
                        <li><a href="#tab2">有图评价</a></li>

                    </ul>

                    <div class="am-tabs-bd">
                        <div class="am-tab-panel am-fade am-in am-active" id="tab1">

                            <div class="comment-main">
                                <div class="comment-list">
                                    <ul class="item-list">


                                        <div class="comment-top">
                                            <div class="th th-price">
                                                <td class="td-inner">评价</td>
                                            </div>
                                            <div class="th th-item">
                                                <td class="td-inner">商品</td>
                                            </div>
                                        </div>
                                      <li class="td td-item">
                                            <div class="item-pic">
                                                <a href="#" class="J_MakePoint">
                                                    <img src="${replyByUid.itemPic}" class="itempic">
                                                </a>
                                            </div>
                                        </li>


                                        <li class="td td-comment">
                                            <div class="item-title">
                                                <div class="item-opinion">${replyByUid.shippingGrade}</div>
                                                <div class="item-name">
                                                    <a href="#">
                                                        <p class="item-basic-info">${replyByUid.title}</p>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="item-comment">
                                                ${replyByUid.content}
                                            </div>


                                        </li>

                                    </ul>

                                </div>
                            </div>

                        </div>
                        <div class="am-tab-panel am-fade" id="tab2">

                            <div class="comment-main">
                                <div class="comment-list">
                                    <ul class="item-list">


                                        <div class="comment-top">
                                            <div class="th th-price">
                                                <td class="td-inner">评价</td>
                                            </div>
                                            <div class="th th-item">
                                                <td class="td-inner">商品</td>
                                            </div>
                                        </div>
                                        <li class="td td-item">
                                           <div class="item-pic">
                                                <a href="#" class="J_MakePoint">
                                                    <img src="${replyByUid.itemPic}" class="itempic">
                                                </a>
                                            </div>
                                        </li>

                                        <li class="td td-comment">
                                            <div class="item-title">
                                                <div class="item-opinion">${replyByUid.shippingGrade}</div>
                                               <div class="item-name">
                                                    <a href="#">
                                                        <p class="item-basic-info">${replyByUid.title}</p>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="item-comment">
                                                ${replyByUid.content}
                                                <div class="filePic"><img src="${replyByUid.pic}" alt=""></div>
                                            </div>

                                        </li>

                                    </ul>

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
                    <li><a href="orderManager">订单管理</a></li>
                    <li><a href="cart?id=${userWithBLOBs.id}">购物车　</a></li>
                    <li class="active"><a href="comment">我的评价</a></li>
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

</html>