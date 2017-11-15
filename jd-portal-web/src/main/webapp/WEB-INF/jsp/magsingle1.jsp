<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Magazine</title>
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
<!--magsingle start here-->
<div class="magzine">
	<div class="container">
		<div class="magzine-main">
			<div class="col-md-8 mag-single">
				<h3>Aspernatur aut</h3>
				<img src="images/skateboard.jpg" alt=""/>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
			    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.</p>
			    <div class="data-line">
			    	<ul>
			    		<li><a href="#"><small class="calen"> </small><span class="calen">July 30, 2015</span></a></li>
			    		<li><a href="#"><small class="admin"> </small><span class="calen">Admin</span></a></li>
			    		<li><a href="#"><small class="comme"> </small><span class="calen">No comments</span></a></li>
			    		<li><a href="#"><small class="post"> </small><span class="calen">View Posts</span></a></li>
			    		<li><a href="#"><small class="link"> </small><span class="calen">Premalink</span></a></li>
			    	</ul>
			    </div>
			   <div class="magsingle-commemts">
			   	<div class="col-md-2 user">
							<img src="images/user.png" alt=""/>
						</div>
						<div class="col-md-10 user-comment">
							<h4>Bill Brown</h4>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
						    <a class="comme" href="#">On December 14, 2014 18:05</a>
						    <div class="user-bwn">
						    	<a href="#"> Relay</a>
						    </div>
						</div>
                  <div class="clearfix"> </div>
			   </div>
			   <div class="magsingle-contact">
			   	<h3>Reply</h3>
			    	<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}"/>
			    	<input type="text"  value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"/>
			    	<textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}"/>Message</textarea>
			    	<input type="submit"  value="Send" />
			   </div>
			</div>
		  <div class="col-md-4 magzin-right">
				<h3>RECENT POST</h3>
				<ul class="magzin-post">
					<li><a href="#">labore dolore magna</a></li>
					<li><a href="#">Lorem ipsum dolor</a></li>
					<li><a href="#">Excepteur occaecat</a></li>
					<li><a href="#">dignissimos ducimus</a></li>
					<li><a href="#">Nam libero tempore</a></li>
				</ul>
				<h3>CATEGORIES</h3>
				<ul class="magzine-arc">
					<li><a href="#">simply random text</a></li>
					<li><a href="#">remaining essentially</a></li>
					<li><a href="#">many web sites</a></li>
					<li><a href="#">repetition injected</a></li>
					<li><a href="#">Temporibus quibusdam</a></li>
				</ul>
				<h3>Archives</h3>
				<ul class="magzine-arc">
					<li><a href="#">June 2014</a></li>
					<li><a href="#">May 2014</a></li>
					<li><a href="#">April 2014</a></li>
					<li><a href="#">January 2014</a></li>
					<li><a href="#">December 2013</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--magsingle end here-->
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