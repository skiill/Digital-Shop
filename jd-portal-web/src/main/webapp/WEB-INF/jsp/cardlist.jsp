<%--
  Created by IntelliJ IDEA.
  User: 1427047286@qq.com
  Date: 2017/11/16 0016
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的银行卡</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/personal.css" rel="stylesheet" type="text/css">


</head>
<jsp:include page="head.jsp"></jsp:include>
<body>
<!--头 -->


<b class="line"></b>

<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <!--标题 -->
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的银行卡</strong> / <small>My&nbsp;Credit&nbsp;Card</small></div>
            </div>
            <hr/>
            <div class="card-box-list">
                <ul>
                    <li>
                        <div class="card-box">
                            <div class="card-box-name">
                                <span class="bank-logo"><a href="#"><img src="../images/bankjh.png"></a></span>
                                <span title="中国建设银行" class="bank-name">中国建设银行</span>
                                <span class="bank-num4">尾号9098</span>
                                <span class="card-type card-type-CC"></span>
                            </div>
                            <div class="card-box-express">
                                <div class="express-status">
                                    <span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
                                </div>
                                <div class="express-else"><a href="#">管理</a></div>
                            </div>
                            <div class="card-detail">
                                <div class="card-detail-list">
                                    <div class="card-detail-value" title="账单"><a href="billlist.html"><strong>账单</strong><span></span></a></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="card-box">
                            <div class="card-box-name">
                                <span class="bank-logo"><a href="#"><img src="../images/bankns.png"></a></span>
                                <span title="湖北省农村信用合作联社" class="bank-name">湖北省农村信用合作联社</span>
                                <span class="bank-num4">尾号8652</span>
                                <span class="card-type card-type-DC"></span>
                            </div>
                            <div class="card-box-express">
                                <div class="express-status">
                                    <span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
                                </div>
                                <div class="express-else"><a href="#">管理</a></div>
                            </div>
                            <div class="card-detail">
                                <div class="card-detail-value" title="账单"><a href="billlist.html"><strong>账单</strong><span></span></a></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="card-box">
                            <div class="card-box-name">
                                <span class="bank-logo"><a href="#"><img src="../images/bankjh.png"></a></span>
                                <span title="中国建设银行" class="bank-name">中国建设银行</span>
                                <span class="bank-num4">尾号9098</span>
                                <span class="card-type card-type-CC"></span>
                            </div>
                            <div class="card-box-express">
                                <div class="express-status">
                                    <span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
                                </div>
                                <div class="express-else"><a href="#">管理</a></div>
                            </div>
                            <div class="card-detail">
                                <div class="card-detail-list">
                                    <div class="card-detail-value" title="账单"><a href="billlist.html"><strong>账单</strong><span></span></a></div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="card-box">
                            <div class="card-box-name">
                                <span class="bank-logo"><a href="#"><img src="../images/bankns.png"></a></span>
                                <span title="湖北省农村信用合作联社" class="bank-name">湖北省农村信用合作联社</span>
                                <span class="bank-num4">尾号8652</span>
                                <span class="card-type card-type-DC"></span>
                            </div>
                            <div class="card-box-express">
                                <div class="express-status">
                                    <span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
                                </div>
                                <div class="express-else"><a href="#">管理</a></div>
                            </div>
                            <div class="card-detail">
                                <div class="card-detail-value" title="账单"><a href="billlist.html"><strong>账单</strong><span></span></a></div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="add-card">
                            <a href="personTo?name=cardmethod" target="_blank"><i class="am-icon-plus"></i>添加银行卡</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!--底部-->
        <div class="footer">


        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="jumpTo?name=index"><i class="am-icon-user"></i>个人中心</a>
            </li>
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li><a href="toInFormation">个人信息</a></li>
                    <li><a href="personTo?name=safety">安全设置</a></li>
                    <li><a href="address">地址管理</a></li>
                    <li  class="active"><a href="personTo?name=cardlist">快捷支付</a></li>
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
                    <li><a href="collectionShop">我的店铺</a></li>
                    <li><a href="collectionItem">我的宝贝</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>

</body>

</html>
