<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Store</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->



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
<body>

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

<div class="storepage">
	<div class="container">
		<div class="storepage-main">

	<div class="col-md-12">
		<div class="content-bar">
				<ul class="product-head">
					<li><a href="jumpTo?name=index">Home</a> <span>::</span></li>
					<li class="active-page">Products</li>
					<%--清除浮动--%>
					<div class="clear"> </div>
				</ul>
			<!--商品显示界面-->
				<div class="products-row">
					<!--上一页 -------------------------------下一页-->
					<div >
						<c:if test="${totalPages>=1 }">
							<c:if test="${page==1 }">
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${page+1}'"
									   value="下一页" class="input-button" />
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${totalPages}'"
									   value="尾页" class="input-button" />
							</c:if>

							<c:if test="${page==totalPages}">
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search'"
									   value="首页" class="input-button" />
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${page-1}'"
									   value="上一页" class="input-button" />
							</c:if>
							<!-- 中间页   -->
							<c:if test="${page>1 && page<totalPage }">
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search'"
									   value="首页" class="input-button" />
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${page-1}'"
									   value="上一页" class="input-button" />
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${page+1}'"
									   value="下一页" class="input-button" />
								<input type="button" id="button1"
									   onclick="window.location='/jdshopshop/search?page=${totalPages}'"
									   value="尾页" class="input-button" />
							</c:if>
							<span style="font-size: 17px">当前页${page}/${totalPage}总页数&nbsp;总条数${recourdCount}</span>
						</c:if>
					</div>
					<!--_________________________________-->
					<!--循环读出商品 -->
					<table >
						<th>ssssss</th>
						<tbody>

						<tr>

							<c:forEach items="${itemlist}" var="item"  varStatus="status">

							<td>

								<a class="trackref" href="jumpTo?name=single" title=""
								   target="_blank">
									<span><img src="${item.image }" style="display: inline" width="530px" height="300px" /></span>
									<span class="p-now">￥<strong>
				<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="" />${item.price/100}</strong>
									       </span>
								</a>

								<a class="trackref presaleSign_225865"
								   href="http://localhost:8086/item/${item.id}.html"
								   target="_blank">${item.title }</a>
							</td>
							<c:if test="${status.count%2==0}">
						</tr>
						<tr>
							</c:if>

							</c:forEach>
						</tr>
						</tbody>
					</table>
				</div>
	</div>
</div>
		</div>
	</div>
</div>



</body>

</html>