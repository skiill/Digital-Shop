
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
            <label for="orderid">订单ID</label>
            <input type="text" class="form-control" id="orderid" width="50%"
                   placeholder="禁止修改" readonly>
        </div>
        <div class="form-group ">
            <label for="ordertype">订单类型</label>
            <input type="text" class="form-control" id="ordertype" width="50%"
                   placeholder="请输入名称">
        </div>
        <div>
        状态:<select   style="height: 30px;" id="orderstate">
        <option>全部</option>
        <option>上架</option>
        <option>下架</option>
            </select>
        </div>
        <br>
        <div class="">创建时间<input readonly="readonly"  name="date" class="Wdate" type="text" style="height: 28px;"
                    onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd ',minDate:'1920-03-08 ',maxDate:'2020-12-12'})"></div>
        <div class="">更新时间<input readonly="readonly"  name="date" class="Wdate" type="text" style="height: 28px;"
                        onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd ',minDate:'1920-03-08 ',maxDate:'2020-12-12'})"></div>
        <div class="form-group ">
            <label for="orderother">订单备注</label>
            <textarea class="form-control" rows="3" id="orderother" placeholder="备注信息"></textarea>
        </div>
        <button type="submit" class="btn btn-default">提交</button>
    </form>



</div>
</body>

</html>
<script>


</script>
