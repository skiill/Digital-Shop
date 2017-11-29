<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Signup</title>
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
<!--signip start here-->
<div class="signup">
	<div class="container">
		<div class="signup-main">
			<div class="sign-top">
					<h3>注 册</h3>
			</div>
			<div class="register-top">
				<h3>个人信息</h3>
				<div class="sign-left">
					<p>姓名</p>
					<input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p>密码</p>
					<input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p></p>
					<input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left">
					<p>PHONE</p>
					<input type="text" value=""  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/>
				</div>
				<div class="sign-left  txt-ar">
					<p>ADDRESS</p>
					<textarea  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}"/> </textarea>
				</div>
			  <div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			<div class="register-bottom">
				<h3>LOGIN INFORMATION</h3>
				<div class="sign-right">
					<p>PASSWORD</p>
					<input type="password" value="">
				</div>
				<div class="sign-right">
					<p>CONFIRM PASSWORD</p>
					<input type="password" value="">
				</div>
				<input type="submit" value="SUBMIT">
			  <div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--signip end here-->
<!--footer start here-->
<div class="footer">


</div>
<!--footer end here-->
</body>
</html>