<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>菜单管理</title>
    <link href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
<body>
<!--菜单管理-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;菜单管理
            </h2>
        </div>
        <table cellpadding="0" cellspacing="0" class="table my-hover table-bordered menu"
               id="menu-table">
            <thead>
            <tr>
                <th class="thead-val" width="25%"><b class="s15">菜单名称</b></th>
                <th class="thead-val" width="25%"><b class="s15">所属菜单</b></th>
                <th class="thead-val" width="25%"><b class="s15">URL</b></th>
                <th class="thead-val" width="25%"><b class="s15">操作</b></th>
            </tr>
            </thead>

            <tbody>
            <tr>
                <td align="center">
                    <div class="table-val">销售订单</div>
                </td>
                <td align="center">
                    <div class="table-val">销售管理</div>
                </td>
                <td align="center">
                    <div class="table-val">sellAction_order.action</div>
                </td>
                <td align="center">
                    <div class="table-val">
                        <a class="btn btn-default btn-sm" href="javascript:void(0)">修改</a>
                        <a class="btn btn-danger btn-sm deleteThisMenu" href="javascript:void(0)">删除</a>
                    </div>
                </td>
            </tr>
            </tbody>

            <tfoot class="tfoot-hide">
            <tr>
                <th colspan="4" class="opacity0">111</th>
            </tr>
            </tfoot>

        </table>
    </div>
    <div class="col-xs-12 clearfix my-content">
        <br>
        <hr style="border-color: rgba(255,255,255,0.35)"/>
    </div>
</div>

<script src="../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="../../dist/js/jquery-ui.js" type="text/javascript"></script>

<script>

    window.onload = function () {
        var _partent = window.parent;

        // 点击删除商品分类
        $(".deleteThisMenu").on("click", function () {
            _partent.showErrorModal();
        });
    }

    $(function () {

        var TableOptions = {
            "lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]],
            "pageLength": 10,
            "dom": '<"tops"<"searchWrap"<"tableControl">>f>rt<"bottoms"p>',
            "info": false,
            "ordering": false,
            "stateSave": false,
            "pageing": false,
            "scrollX": true,
            "language": {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "sZeroRecords": "无记录",
                "sSearch": "搜索:",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast": "尾页"
                }
            },
            "columnDefs": [
                {orderable: false, targets: 0},
            ],
            buttons: [
                'copy', 'excel', 'pdf'
            ],
            "drawCallback": function (settings) {
            },
            "order": []
        };
        var table = $('#menu-table').dataTable(TableOptions);  // 用户表

        $("div.tableControl").html('' +
            '<a class="btn btn-default mr10" id="reloadTable" title="重新加载">刷新</a>' +
            '<a class="btn btn-info" id="addMenu" title="新增菜单" href="addMenu.jsp">新增菜单</a>'
        );
    });


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
