<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loading.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <!-- Bootstrap-3.3.7.css START -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/custom-global.css" rel="stylesheet" type="text/css"/>
    <link href="fonts/custom-fonts.css" rel="stylesheet" type="text/css"/>
    <link href="css/loaders.min.css" rel="stylesheet" type="text/css"/>
    <!-- Myself's css END -->
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        .main {
            width: 950px;
            margin: 0px auto 100px;
        }

        .title {
            padding: 25px 10px 20px;
        }

        .slice {
            position: relative;
            float: left;
            width: 300px;
            height: 180px;
            margin: .5em;
            padding: 2em;
            text-align: center;
            border: 1px solid rgba(0, 0, 0, .5);
        }

        .slice > div {
            margin: 1em auto;
        }

        .slice > div:nth-child(2) {
            position: absolute;
            bottom: 0;
            left: 3em;
            font-size: 17px;
        }
    </style>
  </head>
  
<body class="dark-bg">
<!-- Pages Code Begin -->
<div class="container">

    <div class="main">
        <h1 class="title">
            CSS3 Loaders 预加载动画
        </h1>
        <div class="slice">
            <div data-loader="circle"></div>
            <div>data-loader="circle"</div>
        </div>

        <div class="slice">
            <div data-loader="circle-side"></div>
            <div>data-loader="circle-side"</div>
        </div>

        <div class="slice">
            <div data-loader="arrow-circle"></div>
            <div>data-loader="arrow-circle"</div>
        </div>

        <div class="slice">
            <div data-loader="ball-scale"></div>
            <div>data-loader="ball-scale"</div>
        </div>

        <div class="slice">
            <div data-loader="ball-circle"></div>
            <div>data-loader="ball-circle"</div>
        </div>

        <div class="slice">
            <div data-loader="rectangle"></div>
            <div>data-loader="rectangle"</div>
        </div>

        <div class="slice">
            <div data-loader="heart"></div>
            <div>data-loader="heart"</div>
        </div>

        <div class="slice">
            <div data-loader="ball-rotate"></div>
            <div>data-loader="ball-rotate"</div>
        </div>

        <div class="slice">
            <div data-loader="ball-pulse"></div>
            <div>data-loader="ball-pulse"</div>
        </div>

        <div class="slice">
            <div data-loader="jumping"></div>
            <div>data-loader="jumping"</div>
        </div>

        <div class="slice">
            <div data-loader="satellite"></div>
            <div>data-loader="satellite"</div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<!-- Pages Code END -->
<!-- jquery-2.1.1.js -->
<script src="js/jquery-2.1.1.js" type="text/javascript"></script>
<!-- Bootstrap-3.3.7.js -->
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/npm.js" type="text/javascript"></script>
</body>
</html>
