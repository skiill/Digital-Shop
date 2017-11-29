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
                <form action="user/login">
                <p>USER NAME </p>
                <input type="text" value="" name="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
                <p>PASSWORD</p>
                <input type="password" value="" name="password">
                <input type="submit" value="LOGIN" id="login1">
                </form>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--login end here-->
<!--footer start here-->

<!--footer end here-->

</body>
</html>