<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/slide.css" />

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1);}</script>
<meta name="keywords" content="Kick flips Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<%--<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>--%>
<%--<link href='http://fonts.useso.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>--%>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script src="js/slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //end-smoth-scrolling -->
<!---- animated-css ---->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="head.jsp"/>


<!--商品显示界面-->
<table >
    <th>ssssss</th>
    <tbody>

    <tr>

        <c:forEach items="${itemList}" var="item"  varStatus="status">

        <td>

            <a class="trackref" href="${pageContext.request.contextPath }/itemaction?id=${item.id }" title=""
               target="_blank">
                <span><img src="${item.price }" style="display: inline" width="530px" height="300px" /></span>
                <span class="p-now">￥<strong>
				<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="" />${item.price/100}</strong>
									       </span>
            </a>

            <a class="trackref presaleSign_225865"
               href="${pageContext.request.contextPath }/itemaction?id=${item.id }"
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
<div class="products-row">
    <!--上一页 -------------------------------下一页-->
    <div >
        <c:if test="${totalPages>=1}">
            <c:if test="${page==1}">
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=${page+1}'"
                       value="下一页" class="input-button" />
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=${totalPages}'"
                       value="尾页" class="input-button" />
            </c:if>

            <c:if test="${page==totalPages}">
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=1'"
                       value="首页" class="input-button" />
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=${page-1}'"
                       value="上一页" class="input-button" />
            </c:if>
            <!-- 中间页   -->
            <c:if test="${page>1 && page<totalPages}">
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=1'"
                       value="首页" class="input-button" />
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=${page-1}'"
                       value="上一页" class="input-button" />
                <input type="button" id="button1"
                       onclick="window.location='${pageContext.request.contextPath}/search?keyword=${query}&page=${page+1}'"
                       value="下一页" class="input-button" />
                <input type="button" id="button1"
                       onclick="window.location.href='${pageContext.request.contextPath}/search?keyword=${query}&page=${totalPages}'"
                       value="尾页" class="input-button" />
            </c:if>
            <span style="font-size: 17px">当前页${page}/${totalPages}总页数&nbsp;总条数${recourdCount}</span>
        </c:if>
    </div>
</div>