<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>进货审核</title>
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
<!--进货审核-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;进货审核
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control p25 mb50">
                <div class="my-content clearfix">
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">企业名称：</label>
                            <span class="form-control-static text-primary">七匹狼</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">下单时间：</label>
                            <span class="form-control-static text-primary">2014-2-23</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">下 单 人：</label>
                            <span class="form-control-static text-primary">张三</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">订 单 号：</label>
                            <span class="form-control-static text-primary">dsafklj123808adsj27dj3</span>
                        </div>
                    </div>
                </div>
                <div class="my-content clearfix">
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">订单类别：</label>
                            <span class="form-control-static text-primary">采购</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">订单状态：</label>
                            <span class="form-control-static text-primary">未审核</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">商品总量：</label>
                            <span class="form-control-static text-primary">101</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">订单总额：</label>
                            <span class="form-control-static text-primary">78824.00 元</span>
                        </div>
                    </div>
                </div>
            </div>


            <hr style="border-color: rgba(255,255,255,0.78)"/>
            <h2 class="per100 text-center color-white">订单明细</h2>
            <hr style="border-color: rgba(255,255,255,0.78)"/>

            <form action="#" method="post">
                <table cellpadding="0" cellspacing="0" class="table my-table table-bordered table-o" id="order-table">
                    <thead>
                    <tr>
                        <th class="thead-val"><b class="s15">商品类别</b></th>
                        <th class="thead-val"><b class="s15">商品名称</b></th>
                        <th class="thead-val"><b class="s15">购买数量</b></th>
                        <th class="thead-val"><b class="s15">进货单价</b></th>
                        <th class="thead-val"><b class="s15">合计</b></th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td align="center">
                            <div class="table-val">上衣</div>
                        </td>
                        <td align="center">
                            <div class="table-val">雪酷狼皮价格</div>
                        </td>
                        <td align="center">
                            <div class="table-val">100</div>
                        </td>
                        <td align="center">
                            <div class="table-val text-right pr15">788.23 元</div>
                        </td>
                        <td align="center">
                            <div class="table-val text-right pr15">78823.00 元</div>
                        </td>
                    </tr>
                    </tbody>

                    <tfoot>
                    <tr>
                        <th colspan="4">
                            <div class="table-val text-right">总计：</div>
                        </th>
                        <th>
                            <div class="table-val text-right pr10"><span id="totalPrice">78824</span>.00 元</div>
                        </th>
                    </tr>
                    </tfoot>
                </table>

                <div class="table-control clearfix p25">
                    <div class="col-xs-6 text-right">
                        <button class="btn btn-success btn-lg" type="submit" style="width: 120px">通 过</button>
                    </div>
                    <div class="col-xs-6 text-left">
                        <button class="btn btn-danger btn-lg" type="button" style="width: 120px">驳 回</button>
                    </div>
                </div>
            </form>
        </div>

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

    };

</script>
<script src="../../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
