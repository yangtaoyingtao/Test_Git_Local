<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>任务详情</title>
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
<!--任务详情-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;任务详情
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control p20 mb50">
                <div class="my-content clearfix">
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">企业名称：</label>
                            <span class="form-control-static text-primary">七匹狼</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">订单类别：</label>
                            <span class="form-control-static text-primary">采购</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">提货方式：</label>
                            <span class="form-control-static text-primary">自提</span>
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
                            <label class="table-label">联 系 人：</label>
                            <span class="form-control-static text-primary">灰太狼</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group">
                            <label class="table-label">联系方式：</label>
                            <span class="form-control-static text-primary">748748</span>
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
                            <label class="table-label">地 址：</label>
                            <span class="form-control-static text-primary">狼堡</span>
                        </div>
                    </div>
                </div>
            </div>

            <hr style="border-color: rgba(255,255,255,0.78)"/>
            <h2 class="per100 text-center color-white">单据明细</h2>
            <hr style="border-color: rgba(255,255,255,0.78)"/>

            <form action="#" method="post">
                <table cellpadding="0" cellspacing="0" class="table my-table table-bordered" id="order-table">
                    <thead>
                    <tr>
                        <th class="thead-val" width="33%"><b class="s16">商品类别</b></th>
                        <th class="thead-val" width="33%"><b class="s16">商品名称</b></th>
                        <th class="thead-val" width="33%"><b class="s16">数量</b></th>
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
                    </tr>
                    </tbody>

                    <tfoot class="tfoot-hide">
                    <tr>
                        <th colspan="3" class="opacity0">11</th>
                    </tr>
                    </tfoot>
                </table>

                <div class="table-control clearfix p25">
                    <button class="btn btn-success btn-block btn-lg" style="height: 65px">
                        <b class="s24">结 单</b>
                    </button>

                    <button class="btn alert-danger btn-block btn-lg disabled" style="height: 65px">
                        <b class="s24">已结单</b>
                    </button>
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
