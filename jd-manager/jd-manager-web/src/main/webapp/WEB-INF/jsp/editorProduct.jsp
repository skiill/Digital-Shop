
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js" ></script>
</head>

<body>
<div style="text-align: center"><h2>这是订单修改页面</h2></div>
<div id="dataTable">
    <table id="tb_pro"></table>
</div>
<div id="toolbar">
    <form role="form" class="">
        <div class="form-group ">
            <label for="title">商品标题</label>
            <input type="text" class="form-control" id="title" width="50%"
                   placeholder="请输入名称" >
        </div>
        <div class="form-group ">
            <label for="sellpoint">卖点</label>
            <input type="text" class="form-control" id="sellpoint" width="50%"
                   placeholder="请输入名称">
        </div>
        <div class="form-group ">
            <label for="price">价格</label>
            <input type="text" class="form-control" id="price" width="50%"
                   placeholder="请输入名称">
        </div>
        <div class="form-group ">
            <label for="num">库存</label>
            <input type="text" class="form-control" id="num" width="50%"
                   placeholder="请输入名称">
        </div>
        <div class="form-group ">
            <label for="barcode">条形码</label>
            <input type="text" class="form-control" id="barcode" width="50%"
                   placeholder="请输入名称">
        </div>
        <div class="form-group ">
            <label for="image">图片</label>
            <input type="text" class="form-control" id="image" width="50%"
                   placeholder="请输入名称">
        </div>
        <div class="form-group ">
            <label for="cid">类目</label>
            <input type="text" class="form-control" id="cid" width="50%"
                   placeholder="请输入名称">
        </div>

        <button type="submit" class="btn btn-default">提交</button>
    </form>



</div>
</body>

</html>
<script>


</script>

