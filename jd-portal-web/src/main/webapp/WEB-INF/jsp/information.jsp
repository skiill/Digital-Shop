<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>个人资料</title>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/infstyle.css" rel="stylesheet" type="text/css">

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/amazeui.js" type="text/javascript"></script>



    <%--<!---->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }</script>
    <meta name="keywords"
          content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>

    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
            });
        });
    </script>
    <!-- //end-smoth-scrolling -->
    <!---- animated-css ---->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>--%>
    <!---- animated-css ---->
</head>
<jsp:include page="head.jsp"></jsp:include>

<body>


<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-info">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> /
                        <small>个人信息</small>
                    </div>
                </div>
                <hr/>

                <!--头像 -->
                <div class="user-infoPic">

                    <div class="filePic" >
                        <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="images/*">
                        <img name="headPic" class="am-circle am-img-thumbnail" src="${userWithBLOBs.headPic}" alt=""/>
                    </div>

                    <p class="am-form-help" name="headPic">头像</p>

                    <div class="info-m">
                        <div><b>用户名：<i>${userWithBLOBs.username}</i></b></div>
                        <div class="u-level">
									<span class="rank r2">
							             普通顾客
						            </span>
                        </div>

                    </div>
                </div>

                <!--个人信息 -->
                <div class="info-main">


                    <form class="am-form am-form-horizontal" id="personForm" method="post" action="modify">
                        <input type="hidden" value="${userWithBLOBs.id}" name="id">
                        <div class="am-form-group">
                            <label for="realName" class="am-form-label">真实姓名</label>
                            <div class="am-form-content">
                                <input type="text" id="realname" VALUE="${userWithBLOBs.realname}" name="realname">

                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-name" class="am-form-label">昵称</label>
                            <div class="am-form-content">
                                <input type="text" id="user-name" VALUE="${userWithBLOBs.username}" name="username">

                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="password" class="am-form-label">密码</label>
                            <div class="am-form-content">
                                <input type="password" id="password" VALUE="${userWithBLOBs.password}" name="password">

                            </div>
                        </div>

                        <div class="am-form-group">
                            <label class="am-form-label" for="idNumber">身份证</label>
                            <div class="am-form-content birth">
                                <div>
                                    <input readonly="readonly" id="idNumber" VALUE="${userWithBLOBs.idNumber}" type="text"
                                           name="idNumber">
                                </div>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-phone" class="am-form-label">电话</label>
                            <div class="am-form-content">
                                <input id="user-phone" VALUE="${userWithBLOBs.phone}" type="tel" name="phone">

                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-email" class="am-form-label">电子邮件</label>
                            <div class="am-form-content">
                                <input id="user-email" VALUE="${userWithBLOBs.email}" type="email" name="email">
                            </div>
                        </div>


                        <div class="info-btn">

                            <input type="submit" class="am-btn am-btn-danger"  value="保存修改">
                        </div>

                    </form>

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
                    <li class="active"><a href="toInFormation">个人信息</a></li>
                    <li><a href="personTo?name=safety">安全设置</a></li>
                    <li><a href="personAddress">地址管理</a></li>
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
                    <li><a href="collectionShop">我的店铺</a></li>
                    <li><a href="collectionItem">我的宝贝</a></li>
                </ul>
            </li>
        </ul>
    </aside>
</div>

</body>


</html>
