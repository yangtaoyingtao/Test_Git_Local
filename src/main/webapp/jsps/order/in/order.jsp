<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width-device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0">
    <title>进货订单管理</title>
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
</head>

<body>
<!--订单管理-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;进货订单管理
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control">
                <form action="#" method="post" id="selectOrderForm">

                    <div class="form-inline mb15 clearfix">
                        <!--订单状态-->
                        <div class="form-group mr25">
                            <label>订单状态： </label>
                            <select id="orderState" class="form-control" name="orderState" style="width: 180px;">
                                <option value="-1" selected disabled>请选择</option>
                                <option value="1">未审核</option>
                                <option value="2">已审核</option>
                                <option value="3">正在采购</option>
                                <option value="4">入库完成</option>
                            </select>
                        </div>
                        <!--下单人-->
                        <div class="form-group mr25">
                            <label>下单人： </label>
                            <input class="form-control" type="text" name="createOrder" style="width: 179px"/>
                        </div>
                        <!--总量-->
                        <div class="form-group m0">
                            <label>总量： </label>
                            <input class="form-control" type="text" name="total" style="width: 120px;"/>
                            <label>-</label>
                            <input class="form-control" type="text" name="total" style="width: 120px"/>
                        </div>
                        <div class="form-group pull-right clearfix">
                            <a href="javascript:void(0)" class="btn btn-default pull-right" style="width: 80px" onclick="loadPurcheOrderByPage(1)">查询</a>
                        </div>
                    </div>

                    <div class="form-inline clearfix mb15">
                        <!--下单时间-->
                        <div class="form-group mr25">
                            <label>下单时间： </label>
                            <input type="date" name="orderTime" class="form-control" id="orderTime1" style="width: 180px;">
                            <label>-</label>
                            <input type="date" name="orderTime" class="form-control" id="orderTime2" style="width: 180px;">
                        </div>
                        <!--总额-->
                        <div class="form-group ml75">
                            <label>总额： </label>
                            <input class="form-control" type="text" name="total" style="width: 120px;"/>
                            <label>-</label>
                            <input class="form-control" type="text" name="total" style="width: 120px"/>
                        </div>
                        <div class="form-group pull-right clearfix">
                            <a class="btn btn-info" style="width: 80px" href="addOrder.html">新建</a>
                        </div>
                    </div>
                </form>
            </div>

            <table cellpadding="0" cellspacing="0" class="table my-hover" id="order-table">
                <thead>
                <tr>
                    <th class="thead-val"><b class="s15">订单号</b></th>
                    <th class="thead-val"><b class="s15">供应商</b></th>
                    <th class="thead-val"><b class="s15">制单人</b></th>
                    <th class="thead-val"><b class="s15">制单时间</b></th>
                    <th class="thead-val"><b class="s15">订单商品总量</b></th>
                    <th class="thead-val"><b class="s15">订单总金额</b></th>
                    <th class="thead-val"><b class="s15">详情</b></th>
                    <th class="thead-val"><b class="s15">订单状态</b></th>
                </tr>
                </thead>

                <tbody id="myContext">
                
                
                </tbody>
                
               

                <tfoot class="tfoot-hide">
                <tr>
                    <th colspan="8" class="opacity0">11</th>
                </tr>
                </tfoot>
			
			
            </table>
            <div id="myPage">
            
            
            </div>
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
<script src="/maven_ssm/loadJs/loadPurcherOrder.js" type="text/javascript"></script>

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

   <!--  $(function () {

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


</script> -->
<script src="../../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>