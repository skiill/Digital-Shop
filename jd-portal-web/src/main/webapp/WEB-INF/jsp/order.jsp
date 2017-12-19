<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>订单信息</title>
    <link rel="stylesheet" type="text/css" href="css/order.css">
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<jsp:include page="head.jsp"/>
<!--全部开始-->
<div class="container">
    <form role="form">
    <!--标题-->
    <div class="rzhdndgw">温馨提示：请认真核对您的购物信息</div>
    <!--收货人信息-->
    <div class="panel panel-info" style="margin: 20px">
        <div class="panel-heading">
            <h3 class="panel-title">收货人信息            <button type="button" class="btn btn-danger btn-sm pull-right" href="${pageContext.request.contextPath}/address">新增地址</button>
            </h3>
        </div>
        <div class="panel-body">
            <%--<c:forEach var="u" items="${user.receiverAddress}">--%>
            <c:forEach var="al" items="${addressList}">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne">
                                    <span style="padding-left: 40px"> 收货人：${user.username}</span>

                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body" id="panel_body">
                            省：<span style="padding-right: 40px" id="province${al.aid}">${al.province}</span>
                            市：<span style="padding-right: 40px" id="city${al.aid}">${al.city}</span>
                            区：<span style="padding-right: 40px" id="dist${al.aid}">${al.dist}</span>
                            街：<span style="padding-right: 40px" id="street${al.aid}">${al.street}</span>
                            <span style="margin-left: 200px">联系方式：${user.phone}</span>
                            <span class="pull-right"> 选择</span>
                           <input type="radio" class="pull-right" id="${al.aid}" name="address"  value="${al}"/>

                            <script type="text/javascript">
                                $(function () {
                                    if(${al.status}){
                                        $('#${al.aid}').attr("checked","checked");
                                    }
                                })
                            </script>


                        </div>
                    </div>
                </div>
            </div>
            <%--</c:forEach>--%>
                </c:forEach>
        </div>

    </div>


    <!--收货人信息结束-->

    <div class="panel panel-primary" style="margin: 20px">
        <div class="panel-heading">
            <h3 class="panel-title">订单信息</h3>
        </div>
        <div class="panel-body">

            <table class="table table-hover table-striped">
                <caption class="text-center text-success" style="font-size: large">您的订单商品信息</caption>
                <thead>
                <tr>
                    <th class="col-md-1">店铺</th>
                    <th class="col-md-2">商品图片</th>
                    <th class="col-md-2">商品名称</th>
                    <th class="col-md-1">单价</th>
                    <th class="col-md-1">数量</th>
                    <th class="col-md-1">小记</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="cl" items="${cartList}">
                    <input hidden type="text" name="shopId" value="${cl.shopId}">
                    <input hidden type="text" name="itemId" value="${cl.itemId}">
                    <input hidden type="text" name="cartId" value="${cl.id}">
                <tr>
                    <td>${cl.shopName}</td>
                    <td><img src="${cl.pic}" width="150px" height="80px"/>
                    </td>
                    <td>${cl.title}</td>
                    <td>${cl.price}</td>
                    <td>${cl.quantity}</td>
                    <td id="${cl.id}totle" name="totle">
                        <script type="text/javascript">
                            $(function () {
                                var price = ${cl.price};
                                var quantity = ${cl.quantity};
                                var totle = price*quantity;
                                $('#${cl.id}totle').text(totle+".00元");
                                var total_price = (parseInt($("#total_price").text()) + parseInt(totle));
                                $('#total_price').text(total_price + ".00元");


                                var post_fee = (parseInt($("#post_fee").text()) + parseInt(10));
                                $('#post_fee').text(post_fee);

                                var all_totle = (total_price+post_fee);
                                $('#all_totle').text(all_totle+ ".00元");


                            })

                        </script>
                    </td>

                </tr>
                </c:forEach>
                </tbody>
            </table>
            <div style="margin-top: 30px" class="inline">
                <span style="margin-left: 20px">运费：</span>
                <span id="post_fee">0</span><span>.00元</span>
                <span style="margin-left: 100px" >商品金额:</span> <span id="total_price"> 0.00元</span>
                <span style="margin-left: 100px">总计：</span>
                <span id="all_totle">0.00元</span>

            </div>
        </div>

    </div>
    <!--商品清单结束-->
    <!--支付方式-->
    <div class="panel panel-info" style="margin: 20px">
        <div class="panel-heading">
            <h3 class="panel-title">支付方式</h3>
        </div>
        <div class="panel-body">
            <input type="radio" id="payment_type1" name="payment_type" value="1" /> 密码支付

            <input type="radio" id="payment_type2" name="payment_type" value="2" checked/>货到付款
        </div>
        <!--请输入支付密码-->
        <div class="zgykskbj">
            <em>支付密码：</em>
            <input style="float:left; border:1px solid #bbb; box-shadow:none; height:28px; font-size:12px; text-indent:6px; margin-top:10px" type="password" class="shuru" name="password" id="password"/>
            <input type="button" class="button btn-sm btn-success" id="pw_sure" value=" 确认 " style="margin-left: 30px;margin-top: 10px" onclick="pw_sure_check()">
            <span id="pw_sure_info" style="padding-left: 30px"></span>

        </div>
        <script>
            $(function(){
                $("#payment_type1").click(function(){

                    if($("#payment_type1").is(":checked")){
                        $(".zgykskbj").slideToggle()
                    }
                })
                $("#payment_type2").click(function(){


                        $(".zgykskbj").slideToggle()

                })

            })
        </script>
        <!--支付密码结束-->
    </div>
<div style="margin-left: auto;margin-right: auto;margin-bottom: 20px;width: auto" >
    <button type="button" class="btn btn-danger" onclick="history.back()" style="margin-left: 300px">返回购物车</button>

    <button type="button" class="btn btn-warning pull-right" style="margin-right: 300px"  onclick="orderSubmit()">提交订单</button>

</div>
    </form>
</div>
<!--支付方式结束-->
</div>
</body>

<script type="text/javascript">

    function pw_sure_check(){
        var payPassWord = $('#password').val();
//            alert(payPassWord);
        var Password=${user.payPassword};
//        alert(Password);
        if(payPassWord==${user.payPassword}&&payPassWord!=null){
//                alert("right");
            $('#pw_sure_info').text("支付密码正确").css("color","green");
            return true;
        }else{
//                alert("wrong");
            $('#pw_sure_info').text("支付密码错误，请重新输入").css("color","red");
            return false;
        }
    }

    function orderSubmit() {
        //Order表
//        var orders={};

        var userId = ${user.id};
        var postFee=$('#post_fee').html();
        var payment =parseInt($('#all_totle').text());
        var paymentType ;
        var status ;
        var iId =document.getElementsByName("itemId");
        var sId =document.getElementsByName("shopId");
        var cId =document.getElementsByName("cartId");
//        alert("iId:"+iId.length);
//        alert("sId"+sId.length);
        var itemId="";
        var shopId="";
        var cartId="";






        //OrderShipping表
//        var orderShipping={};
        var receiverName ="${user.username}";
        var receiverMobile = ${user.phone};


//        选中的地址

        var address= $('input:radio[name="address"]:checked').val();

        //获得地址的id
        var addressId;
        $('input[name="address"]:checked').each(function(){
            addressId=$(this).attr('id');
        });

        var receiverState = $("#"+"province"+addressId).html();
        var receiverCity = $("#"+"city"+addressId).html();
        var receiverDistrict = $("#"+"dist"+addressId).html();
        var receiverAddress = $("#"+"street"+addressId).html();




        if($('#payment_type1').is(":checked")){
            if(pw_sure_check()){
                paymentType=$('#payment_type1').val();
                status = 2;
            }else{
                alert("请确认密码");
                return false;
            }
        }else if($('#payment_type2').is(":checked")){
            paymentType=$('#payment_type2').val();
            status = 1;
        }

        //将店铺id和商品id分队对应放入
        for ( var i = 0; i < cId.length; i++) {
                itemId = itemId + iId[i].value;
                 shopId = shopId + sId[i].value;
            cartId = cartId + cId[i].value;
            if((i+1)<cId.length){
                itemId=itemId+","
                shopId=shopId+","
                cartId=cartId+","
            }
        }

//        for ( var i = 0; i < sId.length; i++) {
//
//            if((i+1)<iId.length){
//
//            }
//        }
//        alert("itemId:"+itemId);
//        alert("shopId："+shopId);
//        alert("cartId："+cartId);

//        alert(status);

//        return false;

//        orders.userId=userId;
//        orders.postFee=postFee;
//        orders.payment=payment;
//        orders.paymentType=paymentType;
//        orders.status=status;
//
//
//        orderShipping.receiverName=receiverName;
//        orderShipping.receiverMobile=receiverMobile;

        var param = {"userId":userId,"postFee":postFee,"payment":payment,"paymentType":paymentType,"status":status,
            "cartId":cartId,"receiverName":receiverName,"receiverMobile":receiverMobile,"receiverState":receiverState,"receiverCity":receiverCity,
            "receiverDistrict":receiverDistrict,"receiverAddress":receiverAddress};
        $.ajax({
            url: "${pageContext.request.contextPath}/commit",
            method: "post",
            data: param,
            dataType: "json",
            success: function (data) {
                if (data == 1) {//订单提交成功

                    alert("订单提交成功");
                    window.location.href = "jumpTo?name=index&id=0&flag=1";

                } else if (data == 0) {//订单提交失败

                    alert("订单提交失败");
                }


            },
            error: function () {
                alert("服务器端异常");
            }
        });
    }

</script>
</html>


