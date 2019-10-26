<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
<title>入库</title>
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
<!--入库-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;入库
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control p25 mb50">
                <div class="my-content clearfix">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label class="table-label">订 单 号：</label>
                            <span class="form-control-static text-primary">32478dhyfjahfajd32</span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <label class="table-label">商品总量：</label>
                            <span class="form-control-static text-primary">150</span>
                        </div>
                    </div>
                </div>
            </div>


            <hr style="border-color: rgba(255,255,255,0.78)"/>
            <h2 class="per100 text-center color-white">单据明细</h2>
            <hr style="border-color: rgba(255,255,255,0.78)"/>

            <form action="#" method="post">
                <table cellpadding="0" cellspacing="0" class="table my-table table-bordered table-o" id="order-table">
                    <thead>
                    <tr>
                        <th class="thead-val"><b class="s15">商品类别</b></th>
                        <th class="thead-val"><b class="s15">总数量</b></th>
                        <th class="thead-val"><b class="s15">已入库数量</b></th>
                        <th class="thead-val"><b class="s15">剩余数量</b></th>
                        <th class="thead-val"><b class="s15">入库</b></th>
                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td align="center">
                            <div class="table-val">狼皮毛背心</div>
                        </td>
                        <td align="center">
                            <div class="table-val">100</div>
                        </td>
                        <td align="center">
                            <div class="table-val">20</div>
                        </td>
                        <td align="center">
                            <div class="table-val">80</div>
                        </td>
                        <td align="center">
                            <a href="javascript:void(0);" class="btn btn-success btn-sm">入 库</a>
                        </td>
                    </tr>
                    </tbody>

                    <tfoot class="tfoot-hide">
                    <tr>
                        <th colspan="5" class="opacity0">11</th>
                    </tr>
                    </tfoot>
                </table>

                <div class="table-control clearfix p25">
                    <div class="col-xs-12 text-center">
                        <button class="btn btn-default btn-lg" type="button" style="width: 140px">返 回</button>
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
