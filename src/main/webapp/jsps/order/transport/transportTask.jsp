<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>商品运输查询</title>
    <link href="../../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../../../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
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
<!--商品运输查询-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;任务查询
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control">
                <form action="#" method="post" id="selectOrderForm">

                    <div class="form-inline mb15 clearfix">
                        <!--订单状态-->
                        <div class="form-group mr25">
                            <label class="table-label">供应商：</label>
                            <select name="supplier" class="form-control" style="width: 160px">
                                <option value="-1" selected>请选择</option>
                                <option value="1">康师傅</option>
                            </select>
                        </div>
                        <!--下单人-->
                        <div class="form-group mr25">
                            <label class="table-label">发货方式： </label>
                            <select name="supplier" class="form-control" style="width: 100px">
                                <option value="-1" selected>请选择</option>
                                <option value="1">送货</option>
                                <option value="2">自提</option>
                            </select>
                        </div>

                        <div class="form-group pull-right clearfix">
                            <a href="javascript:void(0)" class="btn btn-info pull-right" style="width: 80px">查询</a>
                        </div>
                    </div>

                </form>
            </div>

            <table cellpadding="0" cellspacing="0" class="table" id="order-table">
                <thead>
                <tr>
                    <th class="thead-val"><b class="s15">订单类别</b></th>
                    <th class="thead-val"><b class="s15">供应商</b></th>
                    <th class="thead-val"><b class="s15">发货方式</b></th>
                    <th class="thead-val"><b class="s15">联系人</b></th>
                    <th class="thead-val"><b class="s15">联系方式</b></th>
                    <th class="thead-val" width="35%"><b class="s15" >地址</b></th>
                    <th class="thead-val"><b class="s15">状态</b></th>
                    <th class="thead-val"><b class="s15">详情</b></th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td align="center">
                        <div class="table-val">采购</div>
                    </td>
                    <td align="center">
                        <div class="table-val">七匹狼</div>
                    </td>
                    <td align="center">
                        <div class="table-val">送货</div>
                    </td>
                    <td align="center">
                        <div class="table-val">狼外婆</div>
                    </td>
                    <td align="center">
                        <div class="table-val">119</div>
                    </td>
                    <td align="center">
                        <div class="table-val">狼堡</div>
                    </td>
                    <td align="center">
                        <div class="table-val">正在采购</div>
                    </td>
                    <td align="center">
                        <div class="table-val"><a href="tasksDetails.jsp" class="btn btn-sm btn-default">详情</a></div>
                    </td>
                </tr>
                </tbody>

                <tfoot class="tfoot-hide">
                <tr>
                    <th colspan="8" class="opacity0">11</th>
                </tr>
                </tfoot>

            </table>
        </div>

    </div>
    <div class="col-xs-12 clearfix my-content">
        <br>
        <hr style="border-color: rgba(255,255,255,0.35)"/>
    </div>


</div>

<script src="../../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../../../bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="../../../dist/js/jquery-ui.js" type="text/javascript"></script>

<script>

    window.onload = function () {
        var _partent = window.parent;
        // var _modalURL = "supplier/review.html";

        // // 点击添加商品分类
        // $("#addSupplier").on("click", function () {
        //     _partent.showFormModal(_modalURL);
        // });
        //
        // // 点击删除商品分类
        // $(".deleteThisProductClass").on("click", function () {
        //     _partent.showErrorModal();
        // });
    };

    $(function () {

        var TableOptions = {
            "lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]],
            "pageLength": 15,
            "dom": '<"tops"f>rt<"bottoms"p>',
            "info": false,
            "ordering": false,
            "searching": false,
            "stateSave": true,
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
        var table = $('#order-table').dataTable(TableOptions);  // 用户表
    });


</script>
<script src="../../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
