<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/22
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="banner-strip-lft">
    <div class="container">
        <div class="bann-head">
            <a href="jumpTo?name=index"><img src="images/logo.png" alt=""/></a>
            <ul  class="bann-list">
                <li><a href="jumpTo?name=store">手机</a></li>
                <li><a href="jumpTo?name=magazine">电脑</a></li>
                <li><a href="jumpTo?name=magazine">相机</a></li>
                <li><a href="jumpTo?name=magazine">更多</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="banner-strip-rit">
    <div class="bann-contact">
        <div class="search">
            <input id="keyword" type="text" value=""/>
            <input id="search" type="submit" value=""/>
        </div>
        <script>
//            $('#search').submit(function () {
//               var $keyword = $('#keyword').val();
//                alert($keyword);
//            });
            var keyword = document.getElementById('keyword');
            alert(keyword);

        </script>
        <ul>
            <li ><a href="jumpTo?name=signup">注册</a></li>
            <li ><a href="jumpTo?name=login">登录</a></li>
            <li ><a href="jumpTo?name=signup">个人中心</a></li>
            <li ><a href="jumpTo?name=login">购物车</a></li>
            <li ><a href="jumpTo?name=signup">收藏夹</a></li>

        </ul>
    </div>

</div>
<div class="clearfix"> </div>
<div>


</div>
