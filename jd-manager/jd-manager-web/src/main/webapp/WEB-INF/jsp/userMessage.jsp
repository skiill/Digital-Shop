
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
</head>

<body>
<div>店铺信息管理页面</div>
<div id="dataTable">
    <table id="tb_pro"></table>
</div>
<div id="toolbar">
    <div>店家ID<input id="userid" name="date" type="text" style="height: 28px;">

        <button type="button" class="btn btn-primary" onclick="searchUser()">查询</button>
    </div>

    <div class="heading">
        <button id="build" type="button" style="height: 28px;"  class="btn btn-success" data-toggle="modal" data-target="" onclick="append()">
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
        </button>
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
    function searchUser() {
        var userid=$("#userid").val();
        $('#tb_pro').bootstrapTable('refresh',{
            url:"${pageContext.request.contextPath}/userMessage?userId="+userid
        });
    }


    function editor() {
        sweetAlert("编辑方式", "直接点击数据进行编辑修改!", "warning");
    }

    function remove() {
        var a=$('#tb_pro').bootstrapTable('getSelections');
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
                   ids.push(a[i].id);
               }
                $.post(
                    //url:请求后台的那个地址来进行处理，相当于url，string类型
                    '${pageContext.request.contextPath}/removeShop',
                    //data，从前台提交那些数据到后台处理，相当于data，Object类型
                    {'ids[]': ids},
                    //后台成功处理的回调函数，相当于success，function类型
                    function (data) {
                        swal("Deleted!",
                            "你已成功删除!",
                            "success");
                        //刷新页面
                        $('#tb_pro').bootstrapTable('refresh');

                    },
                    // 返回的数据类型，json String类型
                    'json'
                );
            }
        });

    }


    $('#tb_pro').bootstrapTable({
        url: '${pageContext.request.contextPath}/userMessage',       //请求后台的URL（*）
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
        pageSize: 5,                       //每页的记录行数（*）
        pageList: [5,10, 15, 25, 50],      //可供选择的每页的行数（*）
//        search: true,                      // 是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        strictSearch: true,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        clickToSelect: true,                //是否启用点击选中行
        showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        editable:true,
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
            field: 'id',
            title: '店铺id',
           visible:false

        },{
            field: 'shopname',
            title: '店铺名',
            editable: {
                type: 'text',
                title: '店铺名',
                validate: function (v) {
                    if (!v) return '店铺名不能为空';

                }
            }
        }, {
            field: 'userId',
            title: '店家id',
            editable: {
                type: 'text',
                title: '店家id',
                validate: function (v) {
                    if (!v) return '店家id不能为空';

                }
            }
        }, {
            field: 'itemId',
            title: '商品id',
            editable: {
                type: 'text',
                title: '商品id',
                validate: function (v) {
                    if (!v) return '商品id不能为空';

                }
            }
        },
            {
                field: 'grade',
                title: '店铺评分',
                editable: {
                    type: 'text',
                    title: '店铺评分',
                    validate: function (v) {
                       return ;

                    }
                }
            },
            {
                field: 'attention',
                title: '店铺关注人数',
                editable: {
                    type: 'text',
                    title: '店铺评分',
                    validate: function (v) {
                      return
                    }
                }
            }

        ],
        /*四个参数field, row, oldValue, $el分别对应着当前列的名称
         当前行数据对象、更新前的值、编辑的当前单元格的jQuery对象。*/
        onEditableSave:function (filed,row,oldValue,$el) {
            var Data={shopname:row.shopname,userId:row.userId,itemId:row.itemId,grade:row.grade,
                attention:row.attention}
            $.ajax({
                url:"${pageContext.request.contextPath}/updateShop",
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
                }
            })
        },
        locale:'zh-CN',//中文支持,
    });
</script>
