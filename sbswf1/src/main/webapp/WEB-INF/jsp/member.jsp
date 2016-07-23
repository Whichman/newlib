<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        #body111 {
            background-color: #eee!important;
            padding-top: 50px;
        }
        .form-signin {
            max-width: 750px;
            padding: 0 15px;
            margin: 0 auto;
        }
        #banner {
            margin-bottom: 40px;
            background: url(bootstrap-3.3.5-dist/image/banner.png) #26c479 center bottom no-repeat;
            position: relative;
            height: 60px;
        }
        .form-signin-heading {
            color: #63ad64;
            font-size: 36px!important;
            margin-bottom: 30px;
            font-weight: bold;
        }
        .chong {
            color: #7C7B7B!important;
        }
        .input-group11 {
            margin-top: 25px;
        }
        .font12 {
            font-size: 12px!important;
            line-height: 30px;
            color: #777;
        }
    </style>
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/mycss.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link type="text/css" href="bootstrap-3.3.5-dist/css/zzsc.css" rel="stylesheet" />
</head>
<body id="body111">
<!--导航-->
<nav id="navbar" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.html">
                <img src="bootstrap-3.3.5-dist/image/logo.png" style="display:block">
                <span>前端网</span>
            </a>
            <ul id="shortcut_nav" class="nav navbar-nav navbar-right" >
                <li class="g">
                    <div class="search" action="#" method="post">
                        <input id="nav_search" type="search" value placeholder="搜索">
                    </div>
                </li>
                <li>
                    <a href="http://www.w3cfuns.com/member/login">登陆</a>
                </li>
                <li>
                    <a href="http://www.w3cfuns.com/member/register">注册</a>
                </li>
            </ul>
        </div>
        <div class="navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">首页</a></li>
                <li><a href="notes.html">笔记</a></li>
                <li class="active"><a href="wht.html">话题</a></li>
                <li><a href="feed.html">发现</a></li>
                <li><a href="http://www1.w3cfuns.com/course.php">教程</a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="banner"></div>
<!--登陆界面-->
<div class="container">
    <form class="form-signin">
        <h2 class="form-signin-heading">欢迎回来
            <small class="font12 pull-right">还没账号？
                <a href="member/register" rel="nofollow">立即注册</a>
            </small>
        </h2>
        <div class="input-group input-group11">
            <label class="input-group-addon chong" ><span class="glyphicon glyphicon-user"></span> &nbsp 我的账号</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        </div>
        <div class="input-group input-group11">
            <label class="input-group-addon chong"><span class="glyphicon glyphicon-lock"></span> &nbsp 登录密码</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
        </div>
        <div class="checkbox" style="margin-top: 25px;">
            <label>
                <input type="checkbox" value="remember-me"> 记住我，自动登录
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 30px;width:35%">立即登录</button>
        <h5 class="font12 pull-right">忘记密码或验证问题，
            <a href="member/findpwd" rel="nofollow">点击找回</a>
        </h5>
    </form>
</div>
<!--页脚-->
<footer style="top: 600px;">
    <!--页脚的第一排-->
    <div id="footabout">
        <a href="about/us" target="_blank">关于我们</a>
        <a href="about/business" target="_blank">商务合作</a>
        <a href="about/case" target="_blank">合作案例</a>
        <a href="about/contact" target="_blank">商务联系</a>
        <a href="about/regpact" target="_blank">注册协议</a>
        <a href="about/disclaimer" target="_blank">免责声明</a>
        <a href="about/privacy" target="_blank">版权隐私</a>
        <a href="http://weibo.com/login.php" target="_blank">新浪微博</a>
    </div>
    <!--页脚的第二排-->
    <p style="margin: 0;text-align: center;color: #aaa;background: none;padding:0;">"Copyright ©"
        <a href="">W3Cfuns.com</a>
        "All Rights Reserved."
        <a href="http://www.miitbeian.gov.cn/">京ICP备10055601号-2</a>
    </p>
    <!--页脚的第三排-->
    <div style="padding: 11px 0;height: 38px;text-align: center;overflow: hidden;">
        <b>合作伙伴:</b>
        <a href="https://www.upyun.com/zh/index.html" target="_blank">
            <img src="bootstrap-3.3.5-dist/image/195822cyg228re97eg2s1l.png">
        </a>
    </div>
</footer>

    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/zzsc.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</body>
</html>