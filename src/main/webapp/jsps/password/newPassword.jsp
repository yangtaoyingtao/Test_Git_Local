<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newPassword.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <!--修改密码第二步-->
<body>
<div class="modal-header gray-bg">
    <a class="close" data-dismiss="modal">&times;</a>
    <span class="modal-title s15 strong">
            <i class="icon-table2 s16 mr5"></i>
            <b>修改密码</b>
        </span>
</div>
<div class="modal-body">
    <form action="#" method="post" role="form">
        <div class="form-group">
            <label>请设置新密码</label>
            <input type="password" class="form-control" id="newPassword1">
        </div>
        <div class="form-group">
            <label>确认密码</label>
            <input type="password" class="form-control" id="newPassword2" name="newPassword">
        </div>

        <div class="alert alert-danger" id="errorTips" style="display:none;">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">&times;
            </button>
            <p id="error-text2"></p>
        </div>
        <div class="form-group text-right m0">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" id="setNewPassword">下一步</button>
        </div>
    </form>
</div>
</body>
</html>
