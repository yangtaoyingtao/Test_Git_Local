<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <title>新建订单</title>
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
<!--订单管理-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h1>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;新建订单
            </h1>
        </div>
        <div class="table-container">
            <div class="table-control mb15">
                <form action="#" method="post" id="addOrderForm">
                    <div class="form-inline mb15 clearfix">
                        <div class="form-group col-xs-6 p0">
                            <label class="table-label">供应商：</label>
                            <select name="supplier" class="form-control" style="width: 260px">
                                <option value="-1" selected>请选择</option>
                                <option value="1">康师傅</option>
                            </select>
                        </div>
                        <div class="form-group col-xs-6 p0 text-right">
                            <button type="button" class="btn btn-info" style="width: 80px" onclick="newOrder()">新建
                            </button>
                        </div>
                    </div>
                </form>
            </div>

            <form action="#" method="post">
                <table cellpadding="0" cellspacing="0" class="table table-bordered my-table"
                       id="addOrder-table">
                    <thead>
                    <tr>
                        <th class="thead-val" width="30%"><b class="s15">商品类别</b></th>
                        <th class="thead-val" width="30%"><b class="s15">商品名称</b></th>
                        <th class="thead-val" width="10%"><b class="s15">采购数量</b></th>
                        <th class="thead-val" width="15%"><b class="s15">单价</b></th>
                        <th class="thead-val" align="right" width="15%"><b class="s15">合计</b></th>
                        <th class="thead-val" width="100px"><b class="s15">操作</b></th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td align="center">
                            <select class="form-control" name="productType">
                                <option value="-1">请选择</option>
                                <option value="1">上衣</option>
                            </select>
                        </td>
                        <td align="center">
                            <select class="form-control" name="product">
                                <option value="-1">请选择</option>
                                <option value="1">绿色纯棉加厚</option>
                            </select>
                        </td>
                        <td align="center">
                            <input type="number" class="form-control orderProductNumber" min="1" max="10" value="1"/>
                        </td>
                        <td align="center">
                            <input type="text" class="form-control orderProductPrice"/>
                        </td>
                        <td align="right">
                            <div class="table-val text-right"><span class='price'>00</span>.00元</div>
                        </td>
                        <td align="center">
                            <div class="table-val">
                                <a class="btn btn-danger btn-sm deleteThisOrder" href="javascript:void(0)"
                                   onclick="removeOrder(this)">删除</a>
                            </div>
                        </td>
                    </tr>
                    </tbody>

                    <tfoot>
                    <tr>
                        <th colspan="4" align="right">
                            <div class="table-val text-right">总计：</div>
                        </th>
                        <th align="right">
                            <div class="table-val text-right"><span id="totalPrice">00</span>.00元</div>
                        </th>
                        <th></th>
                    </tr>
                    </tfoot>

                </table>
                <div class="table-control p20">
                    <div class="form-inline">
                        <div class="form-group text-center per100">
                            <button type="submit" class="btn btn-info m5" style="width: 100px">保存</button>
                            <button type="reset" class="btn btn-warning m5" style="width: 100px">重置</button>
                            <button type="button" class="btn btn-default m5" onclick="window.history.back()"
                                    style="width: 100px">取消</button>
                        </div>
                    </div>
                </div>
            </form>

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

    };

    // 新增订单
    function newOrder() {
        var newOrder = "<tr>\n" +
            "                        <td align=\"center\">\n" +
            "                            <select class=\"form-control\" name=\"productType\">\n" +
            "                                <option value=\"-1\">请选择</option>\n" +
            "                                <option value=\"1\">上衣</option>\n" +
            "                            </select>\n" +
            "                        </td>\n" +
            "                        <td align=\"center\">\n" +
            "                            <select class=\"form-control\" name=\"product\">\n" +
            "                                <option value=\"-1\">请选择</option>\n" +
            "                                <option value=\"1\">绿色纯棉加厚</option>\n" +
            "                            </select>\n" +
            "                        </td>\n" +
            "                        <td align=\"center\">\n" +
            "                            <input type=\"number\" class=\"form-control\" min=\"1\" max=\"10\" value=\"1\"/>\n" +
            "                        </td>\n" +
            "                        <td align=\"center\">\n" +
            "                            <input type=\"text\" class=\"form-control\"/>\n" +
            "                        </td>\n" +
            "                        <td align=\"right\">\n" +
            "                            <div class=\"table-val text-right\" ><span class='price'>00</span>.00元</div>\n" +
            "                        </td>\n" +
            "                        <td align=\"center\">\n" +
            "                            <div class=\"table-val\">\n" +
            "                                <a class=\"btn btn-danger btn-sm deleteThisOrder\" href=\"javascript:void(0)\" onclick=\"removeOrder(this)\">删除</a>\n" +
            "                            </div>\n" +
            "                        </td>\n" +
            "                    </tr>";
        $("#addOrder-table").find("tbody").append(newOrder);
        totalPrice();
    }

    // 删除订单
    function removeOrder(btn) {
        $(btn).parents('tr').remove();
        totalPrice();
    }

    function totalPrice() {
        var sum = 0;
        $(".price").each(function () {
            sum = sum + parseInt($(this).text());
        });
        // alert(sum);
        $("#totalPrice").html(sum);
    }

    $(function () {
        $(".orderProductNumber").change(function () {
            var thenumber = $(this).val();
            var theprice = $(this).parent().next().find('.orderProductPrice').val();
            var thistotalPrice = thenumber * theprice;
            $(this).parent().next().next().find('.price').text(thistotalPrice);
            totalPrice();
        });
    });


</script>
<script src="../../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
