<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/14
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
    </script>
    <meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smoth-scrolling -->
</head>
<body>
<!--banner start here-->
<div class="banner-stripes">

        <jsp:include page="head.jsp"/>
</div>
<!--banner end here-->
<!--login start here-->
<div class="login">
    <div class="container">
        <div class="login-main">
            <div class="login-top">
                <h3>LOGIN</h3>
                <img src="images/lock.png" alt=""/>
            </div>
            <div class="login-bottom">
                <p>USER NAME </p>
                <input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
                <p>PASSWORD</p>
                <input type="password" value="">
                <input type="submit" value="LOGIN">
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--login end here-->
<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-4 ftr-grid">
                <h3>Featured product</h3>
                <div class="ftr-glss">
                    <div class="glss-text">
                        <h3>Sunglasses VI</h3>
                        <p>This is Photoshop's version  of Lorem Ipsum.</p>
                        <div class="ftr-gls-bwn">
                            <a href="#">View</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-5 ftr-grid">
                <h3>Featured Article</h3>
                <div class="ft-killbg">
                    <h3>Killin,It</h3>
                    <p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis.</p>
                    <div class="ftr-black-bwn">
                        <a href="#">View Post</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 ftr-small-grid">
                <span class="ftr-line"> </span>
                <ul>
                    <li><a href="jumpTo?name=magazine">Magazine</a></li>
                    <li><a href="jumpTo?name=store">Store</a></li>
                    <li><a href="jumpTo?name=newsletter">Newsletter</a></li>
                    <li><a href="jumpTo?name=about">About</a><li>
                    <li><a href="jumpTo?name=contact">Contact</a><li>
                    <li><a href="jumpTo?name=press">Press</a><li>
                </ul>
            </div>
            <div class="clearfix"> </div>
            <div class="copyright">
                <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> - Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></p>
            </div>
        </div>
    </div>
</div>
<!--footer end here-->
</body>
</html>