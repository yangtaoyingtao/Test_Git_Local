<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
 <title>登录ERP管理系统</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/form-elements.css">
    <link rel="stylesheet" href="../dist/css/jquery-ui.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../fonts/custom-fonts.css">
    <link rel="stylesheet" href="../css/animate.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <style>
        label {
            display: inline-block;
            width: 5em;
            font-weight: 600 !important;
            font-family: "苹方", "微软雅黑", "Open Sans", sans-serif;
        }
    </style>
  </head>
  
<body class="animated fadeIn">

<!-- Top content -->
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2 text ">
                    <h1><strong>欢迎来到</strong> ERP管理系统</h1>
                    <div class="description">
                        <p class="sub-title">
                            ERP管理系统 是现代企业管理的运行模式。它是一个在全公司范围内应用的、高度集成的系统，覆盖了客户、项目、库存和采购、供应、生产等管理工作，通过优化企业资源达到资源
                            <strong class="sub-strong"> 效益最大化</strong>
                            <!--This is a free responsive login form made with Bootstrap.-->
                            <!--Download it on <strong>AZMIND</strong> , customize and use it as you like!-->
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3 class="form-title">登陆我们的系统</h3>
                            <p class="form-sub-title">输入您的管理员账户和密码:</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="main.html" method="post" class="login-form">
                            <!--用户名-->
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="form-username" placeholder="Admin account"
                                       class="form-username form-control" id="form-username" value="">
                            </div>
                            <!--密码-->
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="form-password" placeholder="Password"
                                       class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn">登 陆</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 social-login">
                    <h5>使用第三方帐号登录</h5>
                    <div class="social-login-buttons">
                        <a class="btn btn-link-2" href="#" title="微博帐号登陆">
                            <i class="icon-sina-weibo"></i> 新浪微博
                        </a>
                        <a class="btn btn-link-2" href="#" title="微信登陆">
                            <i class="icon-wechat"></i> 微信
                        </a>
                        <a class="btn btn-link-2" href="#" title="QQ帐号登陆">
                            <i class="icon-qq"></i> 腾讯QQ
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Javascript -->
<script src="../assets/js/jquery-1.11.1.min.js"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../dist/js/jquery-ui.min.js"></script>
<script src="../assets/js/jquery.backstretch.min.js"></script>
<script src="../assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="../assets/js/placeholder.js"></script>
<![endif]-->
<script>
    $(function () {
        $(document).tooltip({
            track: true
        });
    });
</script>
</body>

</html>
