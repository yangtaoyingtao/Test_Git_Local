<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>供应商</title>
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
<!--供应商-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;供应商管理
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control">
                <form action="#" method="post" id="selectSupplierForm">
                    <div class="form-inline mb15 text-right">
                        <!--供应商-->
                        <div class="form-group mr25">
                            <label class="table-label">供应商：</label>
                            <select name="supplier" class="form-control" style="width: 180px">
                                <option value="-1">请选择</option>
                                <option value="1">康师傅</option>
                            </select>
                        </div>
                        <!--联系人-->
                        <div class="form-group">
                            <label class="table-label">联系人：</label>
                            <input class="form-control" type="text" name="contact" style="width: 180px"/>
                        </div>
                        <div class="form-group ml60">
                            <button type="button" class="btn btn-default pull-right" style="width: 80px">查询</button>
                        </div>
                    </div>
                    <div class="form-inline mb15 text-right">
                        <!--电 话-->
                        <div class="form-group mr25">
                            <label class="table-label">电 话：</label>
                            <input class="form-control" type="text" name="contactPhone" style="width: 180px"/>
                        </div>
                        <!--提货方式-->
                        <div class="form-group">
                            <label class="table-label">提货方式：</label>
                            <select name="delivery" class="form-control" style="width: 180px">
                                <option value="-1">请选择</option>
                                <option value="1">送货</option>
                                <option value="2">自提</option>
                            </select>
                        </div>
                        <div class="form-group ml60">
                            <button type="button" class="btn btn-info pull-right" style="width: 80px" id="addSupplier">新建</button>
                        </div>
                    </div>
                </form>
            </div>
            <table cellpadding="0" cellspacing="0" class="table" id="supplier-table">
                <thead>
                <tr>
                    <th class="thead-val" width="29%"><b class="s15">供应厂商</b></th>
                    <th class="thead-val" width="29%"><b class="s15">厂商地址</b></th>
                    <th class="thead-val" width="10%"><b class="s15">联系人</b></th>
                    <th class="thead-val" width="10%"><b class="s15">电话</b></th>
                    <th class="thead-val" width="10%"><b class="s15">送货方式</b></th>
                    <th class="thead-val" width="12%"><b class="s15">操作</b></th>
                </tr>
                </thead>

                <tbody>
                <!--<tr>-->
                    <!--<td align="center">-->
                        <!--<div class="table-val supplierName">康师傅</div>-->
                    <!--</td>-->
                    <!--<td align="center">-->
                        <!--<div class="table-val supplierAddress">中华人民共和国湖南省长沙市</div>-->
                    <!--</td>-->
                    <!--<td align="center">-->
                        <!--<div class="table-val supplierContacts">康徒弟</div>-->
                    <!--</td>-->
                    <!--<td align="center">-->
                        <!--<div class="table-val supplierPhone">18888888888</div>-->
                    <!--</td>-->
                    <!--<td align="center"><span class="ifproduct"><div class="table-val supplierShipping">送货</div></span></td>-->
                    <!--<td align="center">-->
                        <!--<div class="table-val">-->
                            <!--<a class="btn btn-default btn-sm updateThisSupplier" href="javascript:void(0)">修改</a>-->
                            <!--<a class="btn btn-danger btn-sm deleteThisProductClass" href="javascript:void(0)">删除</a>-->
                        <!--</div>-->
                    <!--</td>-->
                <!--</tr>-->

                </tbody>

                <tfoot class="tfoot-hide">
                <tr>
                    <th colspan="6" class="opacity0">111</th>
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

<script src="../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="../../dist/js/jquery-ui.js" type="text/javascript"></script>
<script src="../../js/jquery.cookie.js" type="text/javascript"></script>

<script>

    window.onload = function () {

        var _partent = window.parent;
        var _modalURL = "supplier/addSupplier.jsp";

        // 点击添加供应商
        $("#addSupplier").on("click", function () {
            window.location.href="addSupplier.jsp";
        });

        // 点击修改供应商
        $(".updateThisSupplier").on("click", function () {
            // var supplierName = $(".supplierName").text();
            // var supplierContacts = $(".supplierContacts").text();
            // var supplierAddress = $(".supplierAddress").text();
            // var supplierPhone = $(".supplierPhone").text();
            // var supplierShipping = $(".supplierShipping").text();

            var supplier = {
                "supplierName": $(".supplierName").text(),
                "supplierContacts": $(".supplierContacts").text(),
                "supplierAddress": $(".supplierAddress").text(),
                "supplierPhone": $(".supplierPhone").text(),
                "supplierShipping": $(".supplierShipping").text()
            };


            _partent.showFormModal(_modalURL, supplier);
        });

        // 点击删除供应商
        $(".deleteThisProductClass").on("click", function () {
            _partent.showErrorModal();
        });
    }

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
                "sZeroRecords": "无记录11",
                "sSearch": "搜索：",
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
        var table = $('#supplier-table').dataTable(TableOptions);  // 用户表

    });


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
