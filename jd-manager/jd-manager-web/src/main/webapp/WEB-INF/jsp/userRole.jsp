
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
<div>内容分类页面</div>
<div id="dataTable">
    <table id="tb_pro"></table>
</div>
<div id="toolbar">
    <div>商品类目<input  name="date" type="text" style="height: 28px;">
        状态<select style="height: 30px;" id="orderstate">
            <option>全部</option>
            <option>上架</option>
            <option>下架</option>
        </select>
        <button type="button" class="btn btn-primary">查询</button>
    </div>

    <div class="heading">
        <button id="build" type="button" style="height: 28px;"  class="btn btn-success" data-toggle="modal" data-target="" onclick="append()">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
        </button>
        <button id="btnEdit"  type="button" style="height: 28px;" class="btn btn-warning">
            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>修改
        </button>
        <button id="btnDel" type="button" style="height: 28px;" class="btn btn-danger" data-toggle="modal" data-target="#DeleteForm" onclick="">
            <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>删除
        </button>

    </div>
</div>
</body>

</html>
<script>
    $('#tb_pro').bootstrapTable({
        url: '${pageContext.request.contextPath}/listProducts',       //请求后台的URL（*）
        method: 'get',
        dataType: "json",
        toolbar: '#toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                 //是否显示分页（*）
        sortable: false,                     //是否启用排序
        /* sortOrder: "asc", */                  //排序方式*/
        /*    queryParams: oTableInit.queryParams,//传递参数（*）*/
        sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [5,10, 15, 25, 50],      //可供选择的每页的行数（*）
        search: true,                      // 是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图

        rowStyle: function (row, index) {
            //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
            var strclass = "";
            if (row.status == 1) {
                strclass = 'success';//还有一个active
            }
            else if (row.status == 2) {
                strclass = 'danger';
            }

            return { classes: strclass }
        },
        columns: [{
            checkbox: true
        }, {
            field: 'title',
            title: '商品标题'
        }, {
            field: 'sellPoint',
            title: '卖点'
        }, {
            field: 'price',
            title: '价格'
        },
            {
                field: 'num',
                title: '库存'
            },
            {
                field: 'barcode',
                title: '条形码'
            },
            {
                field: 'image',
                title: '图片'
            },
            {
                field: 'cid',
                title: '类目'
            },
            {
                field: 'status',
                title: '状态',
                formatter:function(value){
                    switch(value){
                        case 1:return "正常";break;
                        case 2:return "下架";break;
                        case 3:return "删除";break;
                    }
                }
            },
            {
                title: '操作',
                field: 'id',
                align: 'center',
                formatter:function(value,row,index){
                    var e = '<a href="#" mce_href="#" onclick="edit(\''+ row.id + '\')">编辑</a> ';
                    var d = '<a href="#" mce_href="#" onclick="del(\''+ row.id +'\')">删除</a> ';
                    return e+d;
                }
            }
        ],
        locale:'zh-CN',//中文支持,
    });
</script>
