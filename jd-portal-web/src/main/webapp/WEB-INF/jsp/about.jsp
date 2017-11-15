<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/14
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About</title>
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
                <a href="jumpTo?name=index"><img src="images/logo.png" alt=""/></a>
                <ul  class="bann-list">
                    <li><a href="jumpTo?name=store">STORE</a></li>
                    <li><a href="jumpTo?name=magazine">MAGAZINE</a></li>
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
                <li><a href="jumpTo?name=signup">SIGN UP</a></li>
                <li><a href="jumpTo?name=login">LOG IN</a></li>
            </ul>
        </div>
    </div>
    <div class="clearfix"> </div>
</div>
<!--banner end here-->
<!--about start here-->
<div class="about">
    <div class="container">
        <div class="about-main">
            <div class="about-top">
                <h3>About us</h3>
                <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</h5>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
            </div>
            <div class="about-bottom">
                <div class="col-md-6 about-bottom-left">
                    <div class="about-img">
                        <img src="images/lad.jpg" alt="">
                    </div>
                    <div class="about-para">
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-6 about-bottom-left">
                    <div class="about-img">
                        <img src="images/man.jpg" alt="">
                    </div>
                    <div class="about-para">
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--about end here-->
<!--team start here-->
<div class="aboutus">
    <div class="container">
        <div class="aboutus-main">
            <div class="col-md-4 aboutus-grid">
                <h3> Namlibero tempore</h3>
                <h4>10 Jan 2015</h4>
                <img src="images/a.jpg" alt=""/>
                <p> These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled.</p>
                <a href="#">Read more</a>
            </div>
            <div class="col-md-4 aboutus-grid">
                <h3>Loremipsum dolor</h3>
                <h4>30 July 2015</h4>
                <img src="images/a1.jpg" alt=""/>
                <p> These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled.</p>
                <a href="#">Read more</a>
            </div>
            <div class="col-md-4 aboutus-grid">
                <h3>Opportunities</h3>
                <h4>18 set 2015</h4>
                <img src="images/a2.jpg" alt=""/>
                <p> These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled.</p>
                <a href="#">Read more</a>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
</div>
<!--team end here-->
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
