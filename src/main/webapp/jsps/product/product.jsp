<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品</title>
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
<!--商品分类-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;商品管理
            </h2>
        </div>

        <table cellpadding="0" cellspacing="0" class="table my-hover"
               id="ProductClass-table">
            <thead>
            <tr>
                <th class="thead-val"><b class="s15">商品名</b></th>
                <th class="thead-val"><b class="s15">供应商</b></th>
                <th class="thead-val"><b class="s15">生产厂家</b></th>
                <th class="thead-val"><b class="s15">产地</b></th>
                <th class="thead-val"><b class="s15">进货价格</b></th>
                <th class="thead-val"><b class="s15">销售价格</b></th>
                <th class="thead-val"><b class="s15">单位</b></th>
                <th class="thead-val"><b class="s15">操作</b></th>
            </tr>
            </thead>

            <tbody>
            <tr>
                <td align="center" width="12%">
                    <div class="table-val">七匹狼</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">黑色狼皮大衣</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">七匹狼服饰</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">金华</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">118.00元</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">148.00元</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">件</div>
                </td>
                <td align="center" width="12%">
                    <div class="table-val">
                        <a class="btn btn-default btn-sm" href="javascript:void(0)">修改</a>
                        <a class="btn btn-danger btn-sm deleteThisProductClass" href="javascript:void(0)">删除</a>
                    </div>
                </td>
            </tr>

            </tbody>

            <tfoot class="tfoot-hide">
            <tr>
                <th colspan="3" class="opacity0">111</th>
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
        var _modalURL = "product/addProduct.jsp";

        // 点击删除商品
        $(".deleteThisProductClass").on("click", function () {
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
        var table = $('#ProductClass-table').dataTable(TableOptions);  // 用户表

        $("div.tableControl").html('' +
            '<a class="btn btn-default mr10" id="reloadTable" title="重新加载" href="javascript:void(0)" onclick="location.reload()">刷新</a>' +
            '<a class="btn btn-info" id="addProduct" title="添加商品" href="addProduct.jsp">新增商品</a>'
        );


    });


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
