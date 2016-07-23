<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="ct" value="${chat}" />
<c:set var="lou" value="${lou}" />
<c:set var="user" value="${user}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>话题</title>
    <style>
    </style>
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/mycss.css">
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link type="text/css" href="${ctx}/static/bootstrap-3.3.5-dist/css/zzsc.css" rel="stylesheet" />
</head>
<body id="body11">
<!--导航栏-->
    <nav id="navbar" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <img src="${ctx}/static/bootstrap-3.3.5-dist/image/logo.png" style="display:block">
                    <span>前端网</span>
                </a>
                <ul id="shortcut_nav" class="nav navbar-nav navbar-right" >
                    <li class="g">
                        <div class="search" action="#" method="post">
                            <input id="nav_search" type="search" value placeholder="搜索">
                        </div>
                    </li>
                    <li>
                        <a href="member.html">登陆</a>
                    </li>
                    <li>
                        <a href="http://www.w3cfuns.com/member/register">注册</a>
                    </li>
                </ul>
            </div>
            <div class="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="${ctx}/index">首页</a></li>
                    <li><a href="${ctx}/index/notes">笔记</a></li>
                    <li class="active"><a href="${ctx}/index/wht/${-1}">话题</a></li>
                    <li><a href="feed.html">发现</a></li>
                    <li><a href="http://www1.w3cfuns.com/course.php">教程</a></li>
                </ul>
            </div>
        </div>
    </nav>
<!--中间整块内容-->
    <div class="container-fluid">
        <!--背景图加标题-->
        <div class="row">
            <div class="col-xs-12 imgcong">
                <div>
                <img class="huati" src="${ctx}/static/bootstrap-3.3.5-dist/image/huati.jpg">
                    <!--背景图里的黑框框-->
                    <div id="titlebar11" class="container" style="text-align: center;width: 1480px;">
                        <i id="line"></i>
                        <!--背景图里的文字-->
                        <div class="textarea">
                            <h1 style="margin-top: 0px;text-align: left;">#${ct.postTitle}#</h1>
                            <p>${ct.postShortContent1}</p>
                        <div id="eye">
                            <span class="glyphicon glyphicon-eye-open">${ct.viewCount+1}</span>
                        </div>
                        </div>
                        <!--背景图里的微博QQ等分享-->
                        <div id="share_btns">
                            <a href="http://service.weibo.com/share/share.php" target="_blank" onmouseover="$(this).tooltip('show')"
                               data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="分享到：新浪微博"><span style="font-size: 16px">新浪</span></a>
                            <a href="http://share.v.t.qq.com/index.php?c=share&a=index&" target="_blank" onmouseover="$(this).tooltip('show')"
                               data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="分享到：腾讯微博"><span style="font-size: 16px">腾讯</span></a>
                            <a href="http://service.weibo.com/share/share.php" target="_blank" onmouseover="$(this).tooltip('show')"
                               data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="分享到：QQ好友"><span style="font-size: 16px">QQ</span></a>
                            <a href="http://service.weibo.com/share/share.php" target="_blank" onmouseover="$(this).tooltip('show')"
                               data-toggle="tooltip" data-placement="top" title=""
                               data-original-title="分享到：QQ空间"><span style="font-size: 16px">空间</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--评论和其他东西-->
        <div class="row">
            <!--评论和观点最左边的-->
            <div class="col-xs-12 col-md-9" style="background: #fff;">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <h3 class="titlebar">
                            <span class="glyphicon glyphicon-option-vertical">我说两句</span>
                            <small style="margin-left: 90px;color: #cdcdcd;">以下用户言论只代表其个人观点，不代表 前端网（W3Cfuns） 的观点或立场。</small>
                        </h3>
                    </div>
                    <div class="col-xs-12 col-md-12">
                        <form action="${ctx}/index/wht/${chat.id}" method = "post">
							<input type="hidden"id="commentPostId" name = "commentPostId" value = "${chat.id}">
						    <input type="text" placeholder="评论人姓名" id="commentAuthor" name = "commentAuthor">
							<textarea class="comment-text" placeholder="你想说的话" id="commentContent" name = "commentContent"></textarea>
							<button type="submit" class="btn_comment btn btn-primary pull-right" data-text="发表评论" id="commentContent" name="commentContent">发表评论</button>
						</form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <h3 class="titlebar" style="margin-top: 0;">
                            <span style="color:  #6bc30d;;font-size: 20px;">最新</span>观点
                        </h3>
                        <ul class="article_talent11">
                            <c:forEach items="${post}" var="pp" varStatus="status">
							<li>
								<div>
									<img class="media-left"
										src="${ctx}/static/bootstrap-3.3.5-dist/image/789.jpg">
									<div class="media-body111">
										<span> <a href="" target="_blank">${pp.commentAuthor}</a>
										</span> <span class="storey">${lou.c2+1-status.count}F</span>
										<p>${pp.commentContent}</p>
										<span class="storey2"><a>支持</a><i>(0)</i></span> <span
											class="storey1"><a>回复</a><i>(0)</i></span>
									</div>
								</div>
							</li>
						</c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <!--主持人和等您参与最右边的-->
            <div class="col-xs-6 col-md-3">
                <div class="row">
                    <!--主持人-->
                    <div class="col-xs-6 col-md-12" style="margin-bottom: 20px;">
                        <img src="${ctx}/static/bootstrap-3.3.5-dist/image/zhuchi.jpg" width="360">
                        <a id="avatar" href="">
                            <img src="${ctx}/static/bootstrap-3.3.5-dist/image/11.jpg" width="70" height="70">
                        </a>
                        <div class="zhu"  style="background: #fff;">
                            <span style="color: #999!important;">主持人：</span>
                            <span style="font-size: 18px!important;">${user.displayName}</span>
                        </div>
                    </div>
                    <!--等您参与-->
                    <div class="col-xs-6 col-md-12">
                        <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">等您参与</span></h3>
                    </div>
                    <!--等你参与下面的图片-->
                    <div class="col-xs-6 col-md-12">
                        <div id="yy" class="yy1">
                        <c:forEach items="${chats}" var="cs" varStatus="status">
                            <a href="${ctx}/index/wht/${cs.id}" target="_blank">
                                <div class="wht_box">
                                    <img style="position:relative;" src="${ctx}/static/bootstrap-3.3.5-dist/image/52.jpg">
                                    <div class="wht_info">
                                        <h5 style="color: white;">#${cs.postTitle}#</h5>
                                        <button class="btn-primary">已有${cs.viewCount}人参与</button>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!--页脚-->
    <footer>
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
                <img src="${ctx}/static/bootstrap-3.3.5-dist/image/195822cyg228re97eg2s1l.png">
            </a>
        </div>
    </footer>

    <script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery.js"></script>
    <script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/zzsc.js"></script>
    <script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</body>
</html>