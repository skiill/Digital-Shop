<%--
  Created by IntelliJ IDEA.
  User: 1427047286@qq.com
  Date: 2017/11/16 0016
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>地址管理</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/addstyle.css" rel="stylesheet" type="text/css">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/amazeui.js"></script>

</head>
<jsp:include page="head.jsp"></jsp:include>
<body>
<!--头 -->


<b class="line"></b>

<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-address">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> /
                        <small>地址管理</small>
                    </div>
                </div>
                <hr/>
                <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
                    <c:forEach items="${addressList}" var="address">
                        <c:if test="${address.status==0}">
                            <li class="user-addresslist defaultAddr">
                                <input type="hidden" value="${address.aid}">
                                <span class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
                                <p class="new-tit new-p-re">
                                    <span class="new-txt">${userWithBLOBs.username}</span>
                                    <span class="new-txt-rd2">${userWithBLOBs.phone}</span>
                                </p>
                                <div class="new-mu_l2a new-p-re">
                                    <p class="new-mu_l2cw">
                                        <span class="title">地址：</span>
                                        <span id="span">
                                         <span class="province" id>${address.province}</span>
                                         <span class="city">${address.city}</span>
                                         <span class="dist">${address.dist}</span>
                                         <span class="street">${address.street}</span>
                                        </span>
                                    </p>
                                </div>
                                <div class="new-addr-btn">
                                    <a href="#" onclick="editAdd(${address.aid})" id="aEdit"><i class="am-icon-edit"></i><span
                                            id="edit">编辑</span></a>
                                    <span class="new-addr-bar">|</span>
                                    <a href="javascript:void(0);" onclick="delClick(this);"><i
                                            class="am-icon-trash"></i>删除</a>
                                </div>
                            </li>
                        </c:if>
                        <c:if test="${address.status==1}">
                            <li class="user-addresslist">
                                <input type="hidden" value="${address.aid}">
                                <span class="new-option-r" onclick="changeStatus(${address.aid})"><i
                                        class="am-icon-check-circle"></i>设为默认</span>
                                <p class="new-tit new-p-re">
                                    <span class="new-txt">${userWithBLOBs.username}</span>
                                    <span class="new-txt-rd2">${userWithBLOBs.phone}</span>
                                </p>
                                <div class="new-mu_l2a new-p-re">

                                    <p class="new-mu_l2cw">
                                        <span class="title">地址：</span>

                                        <span class="province">${address.province}</span>
                                        <span class="city">${address.city}</span>
                                        <span class="dist">${address.dist}</span>
                                        <span class="street">${address.street}</span>
                                    </p>


                                </div>
                                <div class="new-addr-btn">

                                    <a href="javascript:void(0);" onclick="delAddress(${address.aid});"><i
                                            class="am-icon-trash"></i>删除</a>
                                </div>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>
                <div class="clear"></div>

                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1">

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> /
                                <small>Add&nbsp;address</small>
                            </div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                            <form class="am-form am-form-horizontal" id="addressForm">

                                <div class="am-form-group">
                                    <label for="user-name" class="am-form-label">收货人&nbsp;</label>
                                    <div class="am-form-content">
                                        <input type="text" id="user-name" placeholder="${userWithBLOBs.username}">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-form-label">手机号码</label>
                                    <div class="am-form-content">
                                        <input id="user-phone" placeholder="${userWithBLOBs.phone}" type="email">
                                    </div>
                                </div>
                                <div class="am-form-group">
                                    <label class="am-form-label">所在地&nbsp;</label>
                                    <div class="am-form-content address">
                                        <select id="pro" class="data-am-selected" name="province">
                                            <option selected="selected">请选择</option>
                                        </select>
                                        <select id="city" class="data-am-selected" name="city">
                                            <option selected="selected">请选择</option>
                                        </select>
                                        <select id="dist" class="data-am-selected" name="dist">
                                            <option selected="selected">请选择</option>
                                        </select>
                                    </div>

                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-form-label">详细地址</label>
                                    <div class="am-form-content">
                                        <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"
                                                  name="street"></textarea>
                                        <small>100字以内写出你的详细地址...</small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <input type="button" class="am-btn am-btn-danger" value="保存"
                                               onclick="insertAddress()">&nbsp;&nbsp;
                                        <input type="reset" class=" am-btn am-btn-danger">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>
            <script type="text/javascript">
                function editAdd(aid) {
                    /*清空span标签内的字段*/
                    var span = $("#span");
                    span.html("");
                    //追加字段
                    span.html("<input id='inp' type='text' value=''>");

                    $("#edit").html("确认修改");
                    $("#aEdit").attr("onclick", "modifyAdd(this,"+aid+")");

                }

                function modifyAdd(event,aid) {
                    var zz = /.*省(.+)市.*/;
                    var address = $("#inp").val();
                    if (!zz.test(address)) {
                        alert("地址输入不规范");
                        window.location.href = "address";
                        event.preventDefault();
                    }

                    $.post(
                        "person/modifyAddress",
                        {"address": address,
                        "aid":aid},
                        function success(data) {
                            if (data) {
                               alert("修改成功");

                            }else{
                                alert("修改成功");

                            }
                            window.location.href = "personAddress";
                        },
                        //dataType:返回的数据类型，如：json，String类型
                        'json'
                    )
                }


            </script>
            <script type="text/javascript">
                /*var pro = document.getElementById('pro');
                var city = document.getElementById('city');
                var dist = document.getElementById('shansan');
                //准备数据
                var proList = ['江苏', '浙江', '安徽', '黑龙江'];
                var cityList = [];
                cityList[0] = ['南京', '苏州', '扬州', '无锡', '泰州', '连云港'];
                cityList[1] = ['杭州', '温州', '宁波', '绍兴', '金华'];
                cityList[2] = ['合肥', '宣城', '芜湖', '安庆', '亳州'];
                cityList[3] = ['哈尔滨', '齐齐哈尔', '牡', '丹江', '佳木斯', '加格达奇'];
                var distList = [];
                distList[0] = ['芜湖', '齐齐哈尔', '牡丹江', '牡丹江', '无锡'];
                //初始化  添加省份options
                for (var i = 0; i < proList.length; i++) {
                    pro.add(new Option(proList[i], i));
                }

                pro.onchange = function() {
                    city.length = 0;
                    var inter = pro.value;
                    var cityst = cityList[inter];
                    for (var i = 0; i < cityst.length; i++) {

                        city.add(new Option(cityst[i], i));
                    }

                }
                city.onchange = function() {
                    var value = city.value;

                    var dist = distList[value];

                    for (var i = 0; i < distList.length; i++) {
                        dist.add(new Option(dist[i], i));

                    }
                }
                pro.onchange();
                city.onchange();*/

                //var proList=['浙江省','湖北省'];
                //var cityList=[[city:'杭州',data:{'江干','西湖'},'温州':{'江干','西湖'}],['武汉','宜昌']];

                //数字字典
                var proList = [{
                    pro: '浙江省',
                    data: [
                        {city: '杭州', dist: ['江干', '西湖']},
                        {city: '温州', dist: ['龙港', '鳌江']}]
                }, {
                    pro: '湖北省',
                    data: [
                        {city: '武汉', dist: ['汉口', '武昌']},
                        {city: '宜昌', dist: ['21', '22']}]
                }];


                $("#pro").append("<option value=" + proList[0].pro + ">" + proList[0].pro + "</option>");
                $("#pro").append("<option value=" + proList[1].pro + ">" + proList[1].pro + "</option>");
                //console.log($('#pro').val().selected());
                $('#pro').change(function () {
                    $('#city').html("<option selected=\"selected\">请选择</option>");
                    if ($('#pro').val() == '浙江省') {
                        $('#city').append("<option value=" + proList[0].data[0].city + ">" + proList[0].data[0].city + "</option>");
                        $('#city').append("<option value=" + proList[0].data[1].city + ">" + proList[0].data[1].city + "</option>");
                    }
                    if ($('#pro').val() == '湖北省') {

                        $('#city').append("<option value=" + proList[1].data[0].city + ">" + proList[1].data[0].city + "</option>");
                        $('#city').append("<option value=" + proList[1].data[1].city + ">" + proList[1].data[1].city + "</option>");
                    }
                    $('#city').change(function () {
                        $('#dist').html("<option selected=\"selected\">请选择</option>");
                        if ($('#city').val() == '杭州') {
                            $('#dist').append("<option value=" + proList[0].data[0].dist[0] + ">" + proList[0].data[0].dist[0] + "</option>");
                            $('#dist').append("<option value=" + proList[0].data[0].dist[1] + ">" + proList[0].data[0].dist[1] + "</option>");
                        }
                        if ($('#city').val() == '温州') {
                            $('#dist').append("<option value=" + proList[0].data[1].dist[0] + ">" + proList[0].data[1].dist[0] + "</option>");
                            $('#dist').append("<option value=" + proList[0].data[1].dist[1] + ">" + proList[0].data[1].dist[1] + "</option>");
                        }
                        if ($('#city').val() == '武汉') {
                            $('#dist').append("<option value=" + proList[1].data[0].dist[0] + ">" + proList[1].data[0].dist[0] + "</option>");
                            $('#dist').append("<option value=" + proList[1].data[0].dist[1] + ">" + proList[0].data[0].dist[1] + "</option>");
                        }
                        if ($('#city').val() == '宜昌') {
                            $('#dist').append("<option value=" + proList[1].data[1].dist[0] + ">" + proList[1].data[1].dist[0] + "</option>");
                            $('#dist').append("<option value=" + proList[1].data[1].dist[1] + ">" + proList[1].data[1].dist[1] + "</option>");
                        }
                    })
                });


                // $('#dist').append("<option value="+proList[0].city+">"+proList[0].city+"</option>");

                //添加地址
                function insertAddress() {
                    $.post(
                        //url:请求后台的哪个地址来进行处理，相当于url,String类型
                        'person/insertAddress',
                        //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                        $('#addressForm').serialize(),
                        //callback:后台处理成功的回调函数，相当于success，function类型
                        function success(data) {
                            if (data) {
                                //提示框
                                alert('添加成功');
                                window.location.href = "personAddress"
                            }
                        },
                        //dataType:返回的数据类型，如：json，String类型
                        'json'
                    );
                }

                //删除地址
                function delAddress(aid) {
                    $.post(
                        //url:请求后台的哪个地址来进行处理，相当于url,String类型
                        'person/delAddress',
                        //data:从前台提交哪些数据给后台处理，相当于data，Object类型
                        {'aid': aid},
                        //callback:后台处理成功的回调函数，相当于success，function类型
                        function success(data) {
                            if (data) {
                                //提示框
                                alert('删除成功');
                                window.location.href = "personAddress"
                            }
                        },
                        //dataType:返回的数据类型，如：json，String类型
                        'json'
                    );
                }

            </script>

            <script type="text/javascript">
                $(document).ready(function () {
                    $(".new-option-r").click(function () {
                        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                    });

                    var $ww = $(window).width();
                    if ($ww > 640) {
                        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                    }

                })

                function changeStatus(aid) {

                    window.location.href = "modifyStatus?id=" + aid
                }

            </script>

            <div class="clear"></div>

        </div>
        <!--底部-->
        <div class="footer">

        </div>
    </div>

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="toInFormation"><i class="am-icon-user"></i>个人中心</a>
            </li>
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li><a href="toInFormation">个人信息</a></li>
                    <li><a href="personTo?name=safety">安全设置</a></li>
                    <li class="active"><a href="personAddress">地址管理</a></li>
                    <li><a href="personTo?name=cardlist">快捷支付</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的订单</p>
                <ul>
                    <li><a href="orderManager">订单管理</a></li>
                    <li><a href="/cart?id=${userWithBLOBs.id}">购物车　</a></li>
                    <li><a href="comment">我的评价</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i>我的收藏</p>
                <ul>
                    <li><a href="collectionShop">我的店铺</a></li>
                    <li><a href="collectionItem">我的宝贝</a></li>
                </ul>
            </li>

        </ul>

    </aside>
</div>

</body>

</html>