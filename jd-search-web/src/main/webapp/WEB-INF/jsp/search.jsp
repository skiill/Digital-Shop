<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/25
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="search">


    <input type="text" name="keyword" value="">
    <input type="submit" id="btn" value="submit">
</form>
<table>
    <th>ssssss</th>
    <tbody>

    <tr>

        <c:forEach items="${itemList}" var="item" varStatus="status">

        <td>

            <a class="trackref" href="jumpTo?name=single" title=""
               target="_blank">
                <span><img src="${item.image }" style="display: inline" width="530px" height="300px"/></span>
                <span class="p-now">￥<strong>
				<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2"
                                  value=""/>${item.price/100}</strong>
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
<div>
    <c:if test="${totalPages>=1 }">
        <c:if test="${page==1 }">
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${page+1}'"
                   value="下一页" class="input-button"/>
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${totalPages}'"
                   value="尾页" class="input-button"/>
        </c:if>

        <c:if test="${page==totalPages}">
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}'"
                   value="首页" class="input-button"/>
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${page-1}'"
                   value="上一页" class="input-button"/>
        </c:if>
        <!-- 中间页 -->
        <c:if test="${page>1 && page<totalPages}">
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}'"
                   value="首页" class="input-button"/>
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${page-1}'"
                   value="上一页" class="input-button"/>
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${page+1}'"
                   value="下一页" class="input-button"/>
            <input type="button" id="button1"
                   onclick="window.location='search?keyword=${query}&page=${totalPages}'"
                   value="尾页" class="input-button"/>
        </c:if>
        <span style="font-size: 17px">当前页${page}/${totalPages}总页数&nbsp;总条数${recourdCount}</span>
    </c:if>
</div>
