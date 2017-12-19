<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>我的购物车</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/cartstyle.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- dropdown -->
    <link href="css/nav.css" rel="stylesheet" type="text/css" media="all"/>
    <!--js-->

</head>
<body>
<jsp:include page="head.jsp"/>




<div class="cart">
    <div class="container">
        <div class="cart-top">
            <a href="${pageContext.request.contextPath}/cart">位置>>购物车</a>
        </div>

        <div class="col-md-9 cart-items">

            <h2>购物车</h2>


            <%--购物车的一条记录开始--%>
            <c:forEach var="cl" items="${cartList}">
                <div>

                    <div class="cart-header">
                        <div class="pull-right"><input class="checkbox" type="checkbox" id="checkbox${cl.id}" value="${cl.id}"
                                                       autocomplete="off"></div>
                        <div class="cart-sec">
                            <div class="cart-item cyc">
                                <img src="${cl.pic}" width="150px" height="80px"/>
                            </div>
                            <div class="cart-item-info">
                                <h3>商品名称:${cl.title}<span>商品编号:${cl.itemId}</span></h3>
                                <div>
                                    <h4 style="width: 120px">${cl.price/100}<span>元 </span></h4>
                                    <p class="qty">数量：</p>
                                    <input min="0" type="number" id="quantity${cl.id}" name="quantity"
                                           value="${cl.quantity}"
                                           class="form-control input-small"></div>
                                <script type="text/javascript">
                                    $(function () {

                                       $('#checkbox${cl.id}').click(function () {
                                           //当复选框被选中时
                                           var quantity1 = $('#quantity${cl.id}').val();
                                           var price1 =${cl.price/100};
                                           var money1 = quantity1 * price1;

                                            if ($(this).is(":checked")) {
                                                if ($('.checkbox').is(":checked")) {
                                                    var total_price = (parseInt($("#total_price").text()) + parseInt(money1));
                                                    $('#total_price').text(total_price + ".00元");
                                                    var post_fee = (parseInt($('#post_fee').text())+10);
                                                    $('#post_fee').text(post_fee+".00元");
                                                    var all_money = (parseInt($("#total_price").text())+parseInt($('#post_fee').text()));
                                                    $('#all_money').text(all_money+".00元");
                                                }
                                                $(this).attr("name","check_name");

                                            } else {

                                                var total_price = (parseInt($("#total_price").text()) - parseInt(money1));
                                                $('#total_price').text(total_price + ".00元");
                                                var post_fee = (parseInt($('#post_fee').text())-10);
                                                $('#post_fee').text(post_fee+".00元");
                                                var all_money = (parseInt($("#total_price").text())+parseInt($('#post_fee').text()));
                                                $('#all_money').text(all_money+".00元");
                                                $(this).attr("name","");
                                            }


                                        })


                                            var quantity0 = $('#quantity${cl.id}').val();

                                        $('#quantity${cl.id}').bind('input propertychange', function () {
                                            var quantity = $('#quantity${cl.id}').val();
                                            var price =${cl.price/100};
                                            var money = quantity * price;
                                            var cid =${cl.id};
//                                            当当前商品数量为0时，接触复选框按钮
                                            if(parseInt(quantity)<=0){
                                                $('#quantity${cl.id}').removeAttr("checked");
                                                location.reload();
                                            }

                                            if($('#checkbox${cl.id}').is(":checked")){


                                                    if ($('.checkbox').is(":checked")) {
                                                        if((quantity0>=quantity)&&(parseInt(quantity)>=0)&&(parseInt(quantity)>=0)){
                                                            var total_price = (parseInt($("#total_price").text()) - parseInt(price));
                                                            $('#total_price').text(total_price + ".00元");


                                                        }else {
                                                            var total_price = (parseInt($("#total_price").text()) + parseInt(price));
                                                            $('#total_price').text(total_price + ".00元");

                                                        }

                                                    }
                                                quantity0=quantity;

                                            }


                                            var param = {"id": cid, "quantity": quantity};
                                            $.ajax({
                                                url: "${pageContext.request.contextPath}/cart/quantity",
                                                method: "post",
                                                data: param,
                                                dataType: "json"
                                            });

                                            <%--$('#checkbox${cl.id}').is()--%>

                                        });
                                    })

                                </script>


                            </div>
                            <div class="clearfix"></div>
                            <div class="delivery">
                                <%--<p>--%>
                                    <%--<button type="button" class="btn btn-info btn-xs">关注</button>--%>
                                <%--</p>--%>
                                <button type="button" onclick="delete(${cl.id})" id="btn${cl.id}"
                                        class="btn btn-danger btn-xs pull-right">删除
                                </button>
                                <script type="text/javascript">
                                    $(function () {

                                        $('#btn${cl.id}').click(function () {
                                            var cid =${cl.id};
                                            var param = {"id": cid}
                                            $.ajax({
                                                url: "${pageContext.request.contextPath}/cart/delete",
                                                method: "post",
                                                data: param,
                                                dataType: "json",
                                                success: function (data) {
                                                    if (data == 1) {//删除成功

                                                        alert("删除成功");

                                                    } else if (data == 0) {//删除失败

                                                        alert("删除失败");
                                                    }
                                                    location.reload();

                                                },
                                                error: function () {
                                                    alert("服务器端异常");
                                                }
                                            });

                                        });

                                    })

                                </script>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <%--购物车一条记录的结束--%>

        </div>

        <div class="col-md-3 cart-total">
            <h2>购物选择</h2>
            <a class="continue" onclick="goBack()">继续购物</a>
            <div class="price-details">
                <h3>价格细节</h3>
                <span>总价</span>
                <span class="total" id="total_price">0.00元</span>
                <span>优惠</span>
                <span class="total">---</span>
                <span>运费</span>
                <span class="total" id="post_fee">0.00元</span>
                <div class="clearfix"></div>
            </div>
            <h4 class="last-price">总价</h4>
            <span class="total final" id="all_money">0.00元</span>

            <div class="clearfix"></div>
            <a class="order" onclick="create_order()" id="create_order">下订单</a>


        </div>
    </div>
</div>


</body>
<script>
    function goBack() {
        window.history.back()
    }
</script>

<script type="text/javascript">

        function create_order(){
            //得到chekbox对象
            var checkbox = document.getElementsByName("check_name");
//            alert("checkbox的长度为："+checkbox.length);
            if(checkbox.length==0){
                alert("您没有选中任何商品，无法进入订单页面");
                return false;
            }
            var cid ="";
            //当选中时，拿到它的value值，并拼起来
            //需要注意的是，这样拼出来的id字符串，是以 ","结尾的，所以在使用的时候，应先将 ","去掉，也可在if中做判断
            // 当为最后一个时，拼的时候不加 ","
            for ( var i = 0; i < checkbox.length; i++) {
                if(checkbox[i].checked){
                    cid = cid + checkbox[i].value;
                }
                if((i+1)<checkbox.length){
                    cid=cid+","
                }
            }
//            alert("cid为："+cid);


            <%--var cid =${cl.id};//用户id--%>

            <%--$.get("${pageContext.request.contextPath}/cartT0order", { cid: cid });--%>

            location.href='${pageContext.request.contextPath}/cartT0order?cid='+cid
            <%--var param = {"cid": cid}--%>
            <%--$.ajax({--%>
                <%--url: "${pageContext.request.contextPath}/cartT0order",--%>
                <%--method: "post",--%>
                <%--data: param,--%>
                <%--dataType: "json",--%>

            <%--});--%>

        }


</script>

</html>

