<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Single</title>
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
<!--single start here-->
<div class="product">
<div class="container">
<div class="col-md-9">
	<div class="content-bar">
<div class="single-page">
	<ul class="product-head">
		<li><a href="jumpTo?name=index">Home</a> <span>::</span></li>
		<li><a href="jumpTo?name=product">Products</a> <span>::</span></li>
		<li class="active-page">Accessories</li>
		<div class="clear"> </div>
	</ul>
	<!-- Include the Etalage files -->
		<link rel="stylesheet" href="css/etalage.css">
		<script src="js/jquery.etalage.min.js"></script>
	<!-- Include the Etalage files -->
	<script>
			jQuery(document).ready(function($){
	
				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 600,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});
				// This is for the dropdown list example:
				$('.dropdownlist').change(function(){
					etalage_show( $(this).find('option:selected').attr('class') );
				});
	
		});
	</script>
	<!----//details-product-slider--->
	<div class="details-left-slider">
		<ul id="etalage">
			<li>
				<a href="optionallink.html">
					<img class="etalage_thumb_image" src="images/r1.jpg" />
					<img class="etalage_source_image" src="images/r1.jpg" />
				</a>
			</li>
			<li>
				<img class="etalage_thumb_image" src="images/r2.jpg" />
				<img class="etalage_source_image" src="images/r2.jpg">
			</li>
			<li>
				<img class="etalage_thumb_image" src="images/r3.jpg" />
				<img class="etalage_source_image" src="images/r3.jpg" />
			</li>
			<li>
				<img class="etalage_thumb_image" src="images/r4.jpg" />
				<img class="etalage_source_image" src="images/r4.jpg" />
			</li>
			<div class="clearfix"> </div>
		</ul>
	</div>
	<div class="details-left-info">
		<h3>Accessories Latest</h3>
		<p class="availability">Availability: <span class="color">In stock</span></p>
	    <div class="price_single">
		  <span class="reducedfrom">$140.00</span>
		  <span class="actual">$120.00</span><a href="#">click for offer</a>
		</div>
		<h2 class="quick">Quick Overview:</h2>
		<p class="quick_desc"> Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; es</p>
		<ul class="product-colors">
			<h3>available Colors ::</h3>
			<li><a class="color1" href="#"><span> </span></a></li>
			<li><a class="color2" href="#"><span> </span></a></li>
			<li><a class="color3" href="#"><span> </span></a></li>
			<li><a class="color4" href="#"><span> </span></a></li>
			<li><a class="color5" href="#"><span> </span></a></li>
			<li><a class="color6" href="#"><span> </span></a></li>
			<li><a class="color7" href="#"><span> </span></a></li>
			<li><a class="color8" href="#"><span> </span></a></li>
			<div class="clear"> </div>
		</ul>
		<ul class="size">
			<h3>Length</h3>
			<li><a href="#">32</a></li>
			<li><a href="#">34</a></li>
		</ul>
		<div class="quantity_box">
			<ul class="product-qty">
			   <span>Quantity:</span>
			   <select>
				 <option>1</option>
				 <option>2</option>
				 <option>3</option>
				 <option>4</option>
				 <option>5</option>
				 <option>6</option>
			   </select>
		    </ul>
		</div>
		<div class="clearfix"> </div>
		<div class="single-but">
			<input type="submit" value="add to cart"/>
		</div>
</div>
<div class="clearfix"> </div>
</div>
<div class="products-row contact-prod">
					<h3>Latest Productss</h3>
					<a href="jumpTo?name=single"><div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s12.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s13.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid product-gridy">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s14.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s15.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s16.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid product-gridy">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s17.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="jumpTo?name=single"><div class="product-grid product-gridy">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s11.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<a href="single.html"><div class="product-grid product-gridy">
						<div class="more-product-info">
								<span> </span>
						</div>
						<div class="product-img">
							<img src="images/s7.jpg" alt="">
						</div>
						<div class="product-info">
							<div class="product-info-cust">
								<a href="jumpTo?name=details">Details</a>
							</div>
							<div class="product-info-price">
								<a href="jumpTo?name=details">&#8356;380</a>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div></a>
					<div class="clearfix"> </div>
				</div>
</div>
</div>
<div class="col-md-3 sidebar_men">
	  <h3>Categories</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">Dresses</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">Cameras</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Clock</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-55"><a href="#">mobiles</a> <span class="count">(11)</span></li>
		<li class="cat-item cat-item-64"><a href="#">Glases</a> <span class="count">(3)</span></li>
		<li class="cat-item cat-item-64"><a href="#">Other</a> <span class="count">(3)</span></li>
	 </ul>
	  <h3>Colors</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">Green</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">Blue</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Red</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">Gray</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">Green</a> <span class="count">(11)</span></li>
		<li class="cat-item cat-item-63"><a href="#">Yellow</a> <span class="count">(2)</span></li>
	  </ul>
	  <h3>Sizes</h3>
	  <ul class="product-categories color"><li class="cat-item cat-item-42"><a href="#">L</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">M</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">S</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">XL</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">XS</a> <span class="count">(11)</span></li>
	  </ul>
	  <h3>Price</h3>
	  <ul class="product-categories"><li class="cat-item cat-item-42"><a href="#">200$-300$</a> <span class="count">(14)</span></li>
		<li class="cat-item cat-item-60"><a href="#">300$-400$</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-63"><a href="#">400$-500$</a> <span class="count">(2)</span></li>
		<li class="cat-item cat-item-54"><a href="#">500$-600$</a> <span class="count">(8)</span></li>
		<li class="cat-item cat-item-55"><a href="#">600$-700$</a> <span class="count">(11)</span></li>
	  </ul>
	</div>
<div class="clearfix"> </div>
</div>
</div>
<!--single end here-->
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