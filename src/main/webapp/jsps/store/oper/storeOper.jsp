<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>仓库出/入库明细</title>
    <link href="../../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"type="text/css"/>
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
<!--仓库出/入库明细-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;仓库出/入库明细
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control mb15">
                <form action="#" method="post" id="selectSupplierForm">
                    <div class="form-inline my-content mb15">
                        <!--仓库名称-->
                        <div class="form-group mr25">
                            <label class="table-label">仓库名称：</label>
                            <input class="form-control" type="text" name="contact" style="width: 150px"/>
                        </div>
                        <!--操作类别-->
                        <div class="form-group mr25">
                            <label class="table-label">操作类别：</label>
                            <select name="supplier" class="form-control" style="width: 150px">
                                <option value="-1">请选择</option>
                                <option value="1">康师傅</option>
                            </select>
                        </div>
                        <!--操作时间-->
                        <div class="form-group mr25">
                            <label class="table-label">操作时间：</label>
                            <input class="form-control" type="date" name="contact" style="width: 150px"/>
                            <label>-</label>
                            <input class="form-control" type="date" name="contact" style="width: 150px"/>
                        </div>
                        <div class="form-group">
                            <button type="button" class="btn btn-default pull-right" style="width: 80px">查询</button>
                        </div>
                    </div>
                    <div class="form-inline my-content mb15">
                        <!--操作人-->
                        <div class="form-group mr25">
                            <label class="table-label">操 作 人：</label>
                            <input class="form-control" type="text" name="contactPhone" style="width: 150px"/>
                        </div>
                        <!--货物名称-->
                        <div class="form-group mr25" >
                            <label class="table-label">货物名称：</label>
                            <input class="form-control" type="text" name="contactPhone" style="width: 150px"/>
                        </div>
                        <!--数量-->
                        <div class="form-group mr25">
                            <label class="table-label">数 量：</label>
                            <input class="form-control" type="text" name="contact" style="width: 150px"/>
                            <label>-</label>
                            <input class="form-control" type="text" name="contact" style="width: 150px"/>
                        </div>
                        <div class="form-group">
                        </div>
                    </div>
                </form>
            </div>
            <table cellpadding="0" cellspacing="0" class="table my-table my-hover" id="store-table">
                <thead>
                <tr>
                    <th class="thead-val" width="20%"><b class="s15">仓库名称</b></th>
                    <th class="thead-val" width="10%"><b class="s15">类别</b></th>
                    <th class="thead-val" width="20%"><b class="s15">操作时间</b></th>
                    <th class="thead-val" width="15%"><b class="s15">操作人</b></th>
                    <th class="thead-val" width="20%"><b class="s15">货物名称</b></th>
                    <th class="thead-val" width="15%"><b class="s15">数量</b></th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td align="center">
                        <div class="table-val">一号仓库</div>
                    </td>
                    <td align="center">
                        <div class="table-val">入库</div>
                    </td>
                    <td align="center">
                        <div class="table-val">2014-11-12</div>
                    </td>
                    <td align="center">
                        <div class="table-val">灰太狼</div>
                    </td>
                    <td align="center">
                        <div class="table-val">小肥羊刷肉500g</div>
                    </td>
                    <td align="center">
                        <div class="table-val">200箱</div>
                    </td>
                </tr>

                </tbody>

                <tfoot class="tfoot-hide">
                <tr>
                    <th colspan="6" class="opacity0">111</th>
                </tr>
                </tfoot>

            </table>
        </div>
    </div>
    <div class="col-xs-12 clearfix">
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
<script src="../../../js/jquery.cookie.js" type="text/javascript"></script>

<script>

    window.onload = function () {

        var _partent = window.parent;
    }


</script>
<script src="../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
