<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>新增菜单</title>
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
<!--新增菜单-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24"></i>&nbsp;新增菜单
            </h2>
        </div>
        <div class="emp-form">
            <form class="form-horizontal pt0" role="form">
                <!-- 菜单信息 -->
                <div class="page-header">
                    <h5>
                        菜单信息
                        <small>Subtext for header</small>
                    </h5>
                </div>

                <div class="form-group">
                    <label for="menuName" class="col-sm-2 control-label">菜单名称</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="menuName" placeholder="Menu name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="parentMenu" class="col-sm-2 control-label">所属父菜单</label>
                    <div class="col-sm-4">
                        <select id="parentMenu" class="form-control">
                            <option value="-1">请选择</option>
                            <option value="1">商品管理</option>
                            <option value="2">采购管理</option>
                            <option value="3">销售管理</option>
                            <option value="4">商品运输</option>
                            <option value="5">仓库管理</option>
                            <option value="6">报表中心</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="menuURL" class="col-sm-2 control-label">URL</label>
                    <div class="col-sm-4">
                        <input type="password" class="form-control" id="menuURL" placeholder="Menu URL">
                    </div>
                </div>

                <!-- 菜单权限分配 -->
                <div class="page-header">
                    <h5>
                        菜单权限分配
                        <small>Subtext for header</small>
                    </h5>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">菜单权限</label>
                    <div class="col-sm-4">
                        <!-- 获取所有角色 遍历显示 -->
                        <div class="table-control p15 pl25">
                            <div class="checkbox">
                                <label><input type="checkbox" value="1">总经理</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="2">部门主管</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="3">普通员工</label>
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox" value="4">实习生</label>
                            </div>
                        </div>
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
