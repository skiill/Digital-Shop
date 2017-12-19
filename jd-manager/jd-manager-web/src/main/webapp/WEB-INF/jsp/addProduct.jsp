<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js" ></script>
    <!-- ueditor配置文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ueditor/ueditor.config.js"></script>
    <!-- ueditor编辑器源码文件 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/ueditor/ueditor.all.js"></script>
</head>
<body>
<form>
<div class="form-group " style="width: 600px;height: 600px;margin: 0 auto;">
    商品类目<input class="form-control" type="cid" placeholder="选择商品类目">
    商品标题<input class="form-control" type="title" >
    商品价格<input class="form-control" type="price" >
    库存数量<input class="form-control" type="num" >
    条形码<input class="form-control" type="barcode" >
    商品图片<input type="file" />
    <div class="form-group " style="width: 100%;float: left;" id="container"></div>
    <input type="submit" value="提交">
</div>
</form>
</body>

</html>
<script type="text/javascript">
    //解决打开新的新增页面无法显示ueditor
    UE.delEditor('container');
    //实例化富文本编辑器
    var ue = UE.getEditor('container',{
        initialFrameWidth: '100%',
        initialFrameHeight: '400'
    });
</script>
