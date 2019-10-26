<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
      <title>修改部门信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.js" type="text/javascript" charset="utf-8"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../../bootstrap-3.3.7-dist/dataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
<script src="../../dist/js/jquery-ui.js" type="text/javascript"></script>
  </head>
  
  <body>
<!--新建部门表单-->
<form action="#" method="post">
    <div class="modal-header gray-bg">
        <a class="close" data-dismiss="modal">&times;</a>
        <span class="modal-title s15 strong">
                        <i class="icon-table2 s16 mr5"></i>
            <b>修改部门名称</b>
                    </span>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>部门名称</label>
            <input type="text" class="form-control" value="" required placeholder="Department name">
        </div>
        <div class="form-group">
            <label>联系电话</label>
            <input type="tel" class="form-control" value="" required placeholder="Contact number">
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-default" type="button" data-dismiss="modal">取消</button>
        <button class="btn btn-warning" type="reset" >重置</button>
        <button class="btn btn-primary" type="submit">确认</button>
    </div>
</form>
</body>
</html>
