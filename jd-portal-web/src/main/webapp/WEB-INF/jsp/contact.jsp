<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/14
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
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
    <div class="banner-strip-lft">
        <div class="container">
            <div class="bann-head">
                <a href="index.html"> <img src="images/logo.png" alt=""/> </a>
                <ul  class="bann-list">
                    <li><a href="store.html">STORE</a></li>
                    <li><a href="magazine.html">MAGAZINE</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="banner-strip-rit">
        <div class="bann-contact">
            <div class="search">
                <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
                <input type="submit" value=""/>
            </div>
            <ul>
                <li><a href="signup.html">SIGN UP</a></li>
                <li><a href="login.html">LOG IN</a></li>
            </ul>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
<!--banner end here-->
<!--contact start here-->
<div class="contactpage">
    <div class="container">
        <div class="contactpage-main">
            <div class="con-map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3843.619973241085!2d76.81760784999999!3d15.558490199999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bb7980583fd7f37%3A0x860b5b642c472b65!2sSingapur%2C+Karnataka+583229!5e0!3m2!1sen!2sin!4v1424689831582" frameborder="0" style="border:0"></iframe>
            </div>
            <div class="contactpage-bottom">
                <div class="col-md-4 contactpage-bottom-left">
                    <h3>Contact Info</h3>
                    <h4>Headquartes</h4>
                    <p>231 ipsum st</p>
                    <p>There are many variations</p>
                    <h4>Mailling Address</h4>
                    <p>Hampden-Sydney College</p>
                    <p>Finibus Bonorum et </p>
                    <h4>Phone</h4>
                    <p>Ph : 123 456 7890</p>
                    <p>Email : <a href="mailto:example@email.com">123example@email.com</a></p>
                </div>
                <div class="col-md-8 contactpage-bottom-right">
                    <h3>Contact Us Online!</h3>
                    <p>Name(required)</p>
                    <input type="text"  value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
                    <p>Email(requires)</p>
                    <input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
                    <p>Your Messages(requires)</p>
                    <textarea  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/> </textarea>
                    <input type="submit" value="Send">
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<!--contact end here-->
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

        </div>
    </div>
</div>
<!--footer end here-->
</body>
</html>
