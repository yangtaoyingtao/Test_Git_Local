<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>出错啦!</title>
    <link href="../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    
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
<!--首页-->
<div class="content-fluid container animated fadeIn area">
    <div class="inner-pages">
        <div id="error-page" class="table-control">

            <h1>ERROR 404</h1>

            <!-- 英文 -->
            <p class="enText mt20">
                Sorry, but the page you are looking for has not been found. Try checking the URL for
                errors. Don't worry though, we will help you get to the right place.</p>
            <br>
            <a class="btn hollow btn-lg brn mt0">Go to Home page</a>
            <!-- 中文 -->
            <!--<p class="cnText mt10">对不起，您找的网页还没有找到。尝试检查URL是否存在错误。不过别担心，我们会帮你找到正确的地方。</p>-->
        </div>
    </div>


</div>

<script src="../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../dist/js/jquery-ui.js" type="text/javascript"></script>
<script src="../js/morris/raphael-2.1.0.min.js" type="text/javascript"></script>
<script src="../js/morris/morris.js" type="text/javascript"></script>
<script src="../js/jquery-divScroll/divscroll.js" type="text/javascript"></script>

<script type="text/javascript">
    $(".content-fluid").perfectScrollbar({});
</script>
<script src="../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
