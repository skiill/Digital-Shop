<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/14
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数码商城首页</title>
    <link rel="stylesheet" href="css/slide.css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1);}</script>
    <meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <%--<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>--%>
    <%--<link href='http://fonts.useso.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>--%>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/slider.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smoth-scrolling -->
    <!---- animated-css ---->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">

    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!---- animated-css ---->

</head>
<body>
<!--banner start here-->
<div class="banner">
    <div class="banner-stripes">
        <div class="banner-strip-lft">
            <div class="container">
                <div class="bann-head">
                    <a href="jumpTo?name=index"><img src="images/logo.png" alt=""/></a>
                    <ul  class="bann-list">
                        <li><a href="jumpTo?name=store">手机</a></li>
                        <li><a href="jumpTo?name=magazine">电脑</a></li>
                        <li><a href="jumpTo?name=magazine">相机</a></li>
                        <li><a href="jumpTo?name=magazine">更多</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="banner-strip-rit">
            <div class="bann-contact">
                <div class="search">
                    <input type="text" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '';}"/>
                    <input type="submit" value=""/>
                </div>
                <ul>
                    <li ><a href="jumpTo?name=signup">注册</a></li>
                    <li ><a href="login">登录</a></li>
                    <li ><a href="jumpTo?name=signup">个人中心</a></li>
                    <li ><a href="jumpTo?name=login">购物车</a></li>
                    <li ><a href="jumpTo?name=signup">收藏夹</a></li>

                </ul>
            </div>

        </div>
        <div class="clearfix"> </div>
        <!-- 轮播广告 -->
        <div id="banner_tabs" class="flexslider">
            <ul class="slides" >
                <c:forEach items="${addlist}" var="node">
                    <li style="list-style: none">
                        <a title="" target="_blank" href="#">
                            <img width="1920" height="482" alt="" style="background: url(${node.url}) no-repeat center;" src="${node.pic}">
                        </a>
                    </li>
                </c:forEach>



            </ul>
            <ul class="flex-direction-nav">
                <li><a class="flex-prev" href="javascript:;">Previous</a></li>
                <li><a class="flex-next" href="javascript:;">Next</a></li>
            </ul>
            <ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
                <li><a>1</a></li>
                <li><a>2</a></li>
                <li><a>2</a></li>
            </ol>
        </div>
    </div>
    <%--<div class="banner-grid">--%>
        <%--<div class="bann-info">--%>
            <%--<h1>We are kickflips</h1>--%>
            <%--<p>Kickflips is a fresh new brand selling some of the dopest gear out there, and writing about the lifestyle they complement.</p>--%>
            <%--<div class="bann-bwn">--%>
                <%--<a href="#">Read More</a>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="clearfix"> </div>
</div>
<!--banner end here-->
<!--product start here-->
<div class="products">
<div class="container">
        <div class="products-main">
            <h3>手机</h3>
            <div class="produ">
                <a href="jumpTo?name=store&id=1">Visit Store</a>
            </div>
        </div>
    </div>
</div>
<!--products end here-->
<!--store start here-->
<div class="store wow bounce" data-wow-delay="0.1s">
    <div class="container">
        <div class="store-main">
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="glass">

                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="cam">

                    </div>
                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="clk">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="products-main">
            <h3>相机</h3>
            <div class="produ">
                <a href="jumpTo?name=store&id=2">Visit Store</a>
            </div>
        </div>
    </div>
</div>
<div class="store wow bounce" data-wow-delay="0.1s">
    <div class="container">
        <div class="store-main">
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="cam1">

                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="cam2">

                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="cam3">

                </div>
            </div>
        </div>
    </div>
</div>
<div class="products">
    <div class="container">
        <div class="products-main">
            <h3>电脑</h3>
            <div class="produ">
                <a href="jumpTo?name=store&id=3">Visit Store</a>
            </div>
        </div>
    </div>
</div>
<div class="store wow bounce" data-wow-delay="0.1s">
    <div class="container">
        <div class="store-main">
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="wat1">

                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="wat2">

                </div>
            </div>
            <div class="col-md-4 store-grid  wow bounceIn" data-wow-delay="0.4s">
                <div class="wat3">

                </div>
            </div>
        </div>
    </div>
</div>
<!--store end here-->
<!--articals start here-->


<!--footer end here-->
<script type="text/javascript">
    $(function() {
        var bannerSlider = new Slider($('#banner_tabs'), {
            time: 5000,
            delay: 400,
            event: 'hover',
            auto: true,
            mode: 'fade',
            controller: $('#bannerCtrl'),
            activeControllerCls: 'active'
        });
        $('#banner_tabs .flex-prev').click(function() {
            bannerSlider.prev()
        });
        $('#banner_tabs .flex-next').click(function() {
            bannerSlider.next()
        });
    })
</script>
</body>
</html>