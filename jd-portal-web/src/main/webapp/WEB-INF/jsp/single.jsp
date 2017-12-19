<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Single</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
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
</head>
<body>
<!--banner start here-->
<jsp:include page="head.jsp"/>
<!--banner end here-->
<!--single start here-->
<div class="product">
<div class="container">
<div class="col-md-9">
	<div class="content-bar">
<div class="single-page">
	<ul class="product-head">
		<li><a href="jumpTo?name=index">Home</a> <span>::</span></li>
		<li><a href="${pageContext.request.contextPath }/storeaction?id=${shopid}">STORE</a> <span>::</span></li>
		<li class="active-page">Accessories</li>
		<div class="clear"> </div>
	</ul>
		<link rel="stylesheet" href="css/etalage.css">
		<script src="js/jquery.etalage.min.js"></script>
	<!-- Include the Etalage files -->

	<script>
		     //点击触发
			jQuery(document).ready(function($){
                //放大镜
				$('#etalage').etalage({
					thumb_image_width: 300,
				thumb_image_height: 400,
					source_image_width: 600,
					source_image_height: 1000,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
					    console.log(image_anchor);
					    console.log(instance_id);
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
					<img class="etalage_thumb_image" src="${item1.pic}" />
					<img class="etalage_source_image" src="${item1.pic}" />
				</a>

			</li>

			<div class="clearfix"> </div>
		</ul>
	</div>
	<div class="details-left-info">
		<h3>${item.title }</h3>
		<p class="availability">商品库存: <span class="color">${item1.num }</span></p>
	    <div class="price_single">

		  <span class="actual">￥:${item1.price/100}</span>
		</div>
		<h2 class="quick">描述:${item1.sellPoint}</h2>
		<div><span class="status">商品状态:
		<c:if test="${item1.status == '1' }">
			正常
		</c:if>
			<c:if test="${item1.status == '2' }">
				下架
			</c:if>

		</span></div>
		<div class="clearfix"> </div>
		<script>
                function addcart(){
                    var quantity = $("#quantity").val();
                    var itemId=$("#itemId").val();
                    var flag1 = false;
                    if(quantity==null||quantity==""){
                        alert("数量不能为空");
                    }else{
                        flag1 = true;
                    }

                    if(flag1){
                        var param = {"quantity":quantity,"itemId":itemId };
                        $.ajax({
                            url:"${pageContext.request.contextPath }/addcart",
                            data:param,
                            dataType:"json",
                            type:"post",
                            success:function(data){
                                if(data==1){
                                    alert("添加成功");
                                    location.href='cart?id=${user.id}';
                                }else {
                                    alert("添加失败");
                                    location.href='cart?id=${user.id}';
                            }

                            },
							error:function () {
                                alert("提交请求失败");
                                //location.href='${pageContext.request.contextPath}/cart?id=${user.id}';

                            }
                        });

                    }
                };
		</script>
			<input value="${item1.id }" type="hidden" id="itemId" name="itemId">
		<div>购买数量:<input type="number" min="0" id="quantity" value="">
		</div>
			<c:if test="${item1.status == '1' }">
				<div class="single-but">
					<button value="添加到购物车" id="button" onclick="addcart()">添加到购物车</button></div>
				</div>
			</c:if>
		<div>
			<script>
               function itemattention(){
                   var itemId=$("#itemId").val();

                    var param = {"itemId":itemId };

                    $.ajax({
                        url:"${pageContext.request.contextPath }/itemattention",
                        data:param,
                        dataType:"json",
                        type:"post",
                        cache:false,
                        success:function(data){
                            if(data=="SUCCESS"){
                                alert("关注成功");
                            }else{
                                alert("已关注");
                            }
                        },
                        error:function (data) {
                            alert("传输失败");

                        }
                    });
                };
			</script>
			<button value="关注" id="button" onclick="itemattention()">关注</button></div>
</div>

<div class="clearfix"> </div>
				</div>
</div>
	<div>${itemDesc}</div>
</div>
<div class="clearfix"> </div>
</div>
</div>
</body>
</html>