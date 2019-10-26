<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>新增商品</title>
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
<!--新增商品-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;新增商品
            </h2>
        </div>
        <div class="emp-form">
            <form class="form-horizontal pt0" role="form">
                <!-- 新增商品 -->
                <div class="page-header">
                    <h5>
                        新增商品信息
                        <small>Subtext for header</small>
                    </h5>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">供应商</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="productSelect">
                            <option value="-1" selected>请选择</option>
                            <option value="1">耐克</option>
                            <option value="2">阿迪达斯</option>
                            <option value="3">康师傅</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">商品类别</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="productTypeSelect">
                            <option value="-1" selected>请选择</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">商品名称</label>
                    <div class="col-sm-4">
                        <input type="text" name="productName" class="form-control" required placeholder="Product name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">产地</label>
                    <div class="col-sm-4">
                        <input type="text" name="productFrom" class="form-control" required
                               placeholder="Production area">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">生产厂家</label>
                    <div class="col-sm-4">
                        <input type="text" name="productMade" class="form-control" required
                               placeholder="Manufacture factory">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">单位</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" required placeholder="Company">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">进货单价</label>
                    <div class="col-sm-4">
                        <input type="number" minlength="1" class="form-control" required placeholder="Purchase price">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">销售单价</label>
                    <div class="col-sm-4">
                        <input type="number" minlength="1" class="form-control" required placeholder="Selling price">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">体积</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" required placeholder="Volume">
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="button" class="btn btn-default btn-lg mr5" onclick="window.history.back()">返回
                        </button>
                        <button type="reset" class="btn btn-warning btn-lg mr5">重置</button>
                        <button type="submit" class="btn btn-success btn-lg mr5" style="width: 100px">保存</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-xs-12 clearfix">
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
    }


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
