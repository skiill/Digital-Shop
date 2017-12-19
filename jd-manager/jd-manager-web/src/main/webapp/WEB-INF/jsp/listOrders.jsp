<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sweet-alert.css" />
    <%--bootstrap表格编辑--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-editable.css">


    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/sweet-alert.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-editable.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-table-editable.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js" ></script>
</head>
<body>
<div>
    <table id="table"></table>
</div>

<div id="toolbar">
    <div>创建时间<input readonly="readonly" id="ordercreat" name="date" class="Wdate" type="text" style="height: 28px;"
                    onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd ',minDate:'1920-03-08 ',maxDate:'2020-12-12'})">
        <select style="height: 30px;" id="orderstate">
            <option value="0">全部</option>
            <option value="1">未付款</option>
            <option value="2">已付款</option>
            <option value="3">未发货</option>
            <option value="4">已发货</option>
            <option value="5">交易成功</option>
        </select>
        <button type="button" class="btn btn-primary" onclick="searchOrder()">查询</button>
    </div>

    <div class="heading">
        <%--<button id="build" type="button" style="height: 28px;"  class="btn btn-success" data-toggle="modal" data-target="" onclick="append()">--%>
            <%--<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加--%>
        <%--</button>--%>
        <button id="btnEdit"  type="button" style="height: 28px;" class="btn btn-warning" onclick="editor()">
            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>修改
        </button>
        <button id="btnDel" type="button" style="height: 28px;" class="btn btn-danger" data-toggle="modal" data-target="#DeleteForm" onclick="remove()">
            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>删除
        </button>

    </div>
</div>
</body>

</html>
<script>

    function searchOrder() {
        var ordercreat=$("#ordercreat").val();

        var orderstate=$("#orderstate").val();
        $('#table').bootstrapTable('refresh',{
            url:"${pageContext.request.contextPath}/listOrders?createTime="+ordercreat+"&status="+orderstate
        });
    }

    function remove() {
        var a=$('#table').bootstrapTable('getSelections');
        if(a.length==0){
            sweetAlert("你犯了个错误", "请至少选着一条数据!", "error");
            return ;
        }
        sweetAlert({
            title: "确认要删除?",
            text: "你将删除这条记录!!!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "是的!确认删除!",
            closeOnConfirm: false
        }, function(r){
            if(r) {
                //为了存放id创立的一个集合
                var ids = [];

                //遍历选中的记录，将id存放到js数组中
                for (var i = 0; i < a.length; i++) {
                    ids.push(a[i].orderId);
                }
                $.post(
                    //url:请求后台的那个地址来进行处理，相当于url，string类型
                    '${pageContext.request.contextPath}/removeOrder',
                    //data，从前台提交那些数据到后台处理，相当于data，Object类型
                    {'ids[]': ids},

                    //后台成功处理的回调函数，相当于success，function类型
                    function (data) {
                        swal("Deleted!",
                            "你已成功删除!",
                            "success");
                        //刷新页面
                        $('#table').bootstrapTable('refresh');

                    },
                    // 返回的数据类型，json String类型
                    'json'
                );
            }
        });

    }

    function editor() {
        sweetAlert("编辑方式", "直接点击数据进行编辑修改!", "warning");
    }




    $('#table').bootstrapTable({
        url: '${pageContext.request.contextPath}/listOrders',         //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        /*sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式*/
        /*    queryParams: oTableInit.queryParams,//传递参数（*）*/
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [5, 10, 15, 20],        //可供选择的每页的行数（*）
        //search: true,                       是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
        editable:true,
        rowStyle: function (row, index) {
            //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
            var strclass = "";
            if (row.status == 2) {
                strclass = 'success';//还有一个active
            }
            else if (row.status == 3) {
                strclass = 'warning';
            }
            else if (row.status == 4) {
                strclass = 'success';
            }
            else if (row.status == 5) {
                strclass = 'success';
            }
            else if (row.status == 1) {
                strclass = 'danger';
            }
            else if (row.status == 6) {
                strclass = 'danger';
            }
            else {
                return {};
            }
            return { classes: strclass }
        },
        columns: [{
            checkbox: true
        }, {
            field: 'orderId',
            title: '订单编号',
            editable: {
                type: 'text',
                title: '订单编号',
                validate: function (v) {
                    if (!v) return '订单编号不能为空';

                }
            }
        }, {
            field: 'payment',
            title: '实付金额',
            editable: {
                type: 'text',
                title: '实付金额',
                validate: function (v) {
                    if (!v) return '实付金额不能为空';

                }
            }
        }, {
            field: 'paymentType',
            title: '支付类型',
            editable: {
                type: 'text',
                title: '支付类型',
                validate: function (v) {
                    if (!v) return '支付类型不能为空';

                }
            }
        },
            {
                field: 'status',
                title: '状态',
                formatter:function(value){
                    switch(value){
                        case 1:return "未付款";break;
                        case 2:return "已付款";break;
                        case 3:return "未发货";break;
                        case 4:return "已发货";break;
                        case 5:return "交易成功";break;
                        case 6:return "交易关闭";break;
                    }
                }
            },
            {
                field: 'createTime',
                title: '创建时间',
         /*       formatter: function (value, row, index) {
                    var date = eval('new ' + eval(value).source)
                    return date.format("yyyy-MM-dd");
                },*/
                editable: {
                    type: 'text',
                    title: '创建时间',
                    validate: function (v) {
                        if (!v) return '创建时间不能为空';

                    }
                }
            },
            {
                field: 'paymentTime',
                title: '付款时间',
           /*     formatter: function (value, row, index) {
                    var date = eval('new ' + eval(value).source)
                    return date.format("yyyy-MM-dd");
                },*/
                editable: {
                    type: 'text',
                    title: '付款时间',
                    validate: function (v) {
                        if (!v) return '付款时间不能为空';

                    }
                }
            },
            {
                field: 'userId',
                title: '用户id',
                editable: {
                    type: 'text',
                    title: '用户id',
                    validate: function (v) {
                        if (!v) return '用户id不能为空';

                    }
                }
            },
            {
                field: 'buyerNick',
                title: '用户昵称',
                editable: {
                    type: 'text',
                    title: '用户昵称',
                    validate: function (v) {
                        if (!v) return '用户昵称不能为空';

                    }
                }
            },],
        /*四个参数field, row, oldValue, $el分别对应着当前列的名称
         当前行数据对象、更新前的值、编辑的当前单元格的jQuery对象。*/
        onEditableSave:function (filed,row,oldValue,$el) {
            var Data={orderId:row.orderId,payment:row.payment,paymentType:row.paymentType,status:row.status,createTime:row.createTime,
                paymentTime:row.paymentTime,userId:row.userId,buyerNick:row.buyerNick}
            $.ajax({
                url:"${pageContext.request.contextPath}/updateOrder",
                data:Data,
                datatype:"json",
                success:function (data) {
                    if(data==1){
                        sweetAlert("提示", "修改成功!", "success");
                    }else{
                        sweetAlert("警告", "修改失败!", "error");
                    }
                },
                error:function () {
                    alert("服务器未知错误");
                    //刷新页面
                    $('#table').bootstrapTable('refresh');
                }
            })
        },
        locale:'zh-CN',//中文支持,
    });
</script>