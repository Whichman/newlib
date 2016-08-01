<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="u" value="${user1}" />
<c:set var="t" value="${term}" />
<c:set var="t2" value="${term2}" />
<c:set var="t3" value="${term3}" />
<c:set var="sum" value="${sum}" />
<c:set var="lou" value="${lou}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${post.postTitle}</title>
<link rel="stylesheet"
	href="${ctx}/static/bootstrap-3.3.5-dist/css/mycss.css">
<link rel="stylesheet"
	href="${ctx}/static/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link type="text/css"
	href="${ctx}/static/bootstrap-3.3.5-dist/css/zzsc.css" rel="stylesheet" />
</head>
<body id="body11">
	<!--导航-->
	<nav id="navbar" class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="${ctx}/index"> <img
					src="${ctx}/static/bootstrap-3.3.5-dist/image/logo.png"
					style="display: block"> <span>约书亚</span>
				</a>
				<ul id="shortcut_nav" class="nav navbar-nav navbar-right">
					<li class="g">
						<div class="search" action="#" method="post">
							<input id="nav_search" type="search" value placeholder="搜索">
						</div>
					</li>
					<li><a href="http://www.w3cfuns.com/member/login">登陆</a></li>
					<li><a href="http://www.w3cfuns.com/member/register">注册</a></li>
				</ul>
			</div>
			<div class="navbar-collapse">
				<ul class="nav navbar-nav">
					
					<li class="active"><a href="${ctx}/index/notes">笔记</a></li>
					
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-md-9" style="background: #fff;">
				<div class="row">
					<div class="col-xs-12 col-md-12">
						<h1 style="font-weight: bold; margin-top: 50px;">${post.postTitle}</h1>
						<div class="panel-heading">
							<img class="noteimg"
								src="${ctx}/static/bootstrap-3.3.5-dist/image/33.jpg">
							<p style="padding-left: 30px;">
								<a class="zuoze" href="">${u.displayName}</a>发布于<time class="timeago" datetime="<fmt:formatDate pattern="yyyy-MM-dd'T'HH:mm:ss'Z'+08:00"
							value="${post.postDate}" />"></time>&nbsp&nbsp&nbsp&nbsp 
								浏览：${post.viewCount+1}&nbsp&nbsp&nbsp&nbsp
								类型： <a href="">${t2.name} </a>-<a href="">${t3.name} </a>&nbsp&nbsp&nbsp&nbsp
								分类： <a style="color: #bdc3c7" onmouseover="$(this).tooltip('show')" data-toggle="tooltip" data-placement="top" title="查看系统分类：“${t.name }”下的所有笔记"> ${t.name } </a> &nbsp&nbsp&nbsp&nbsp
								二维码：<a style="color: #bdc3c7" id="dm" data-placement="top" data-toggle="popover"> 
									<span
									class="glyphicon glyphicon-qrcode">
									</span>
								</a> &nbsp&nbsp&nbsp&nbsp<span class="label label-success">作者原创</span>&nbsp&nbsp 
								<a style="color: #bdc3c7" id="dm1" data-placement="top" data-toggle="popover"> 
									<span class="label label-danger">版权保护</span>
								</a>
							</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="editor_content">${post.postContent }</div>
						<div class="row" style="margin-bottom: 20px;">
							<div class="col-xs-12 col-md-12">
								<span class="pull-left">标签：</span>
								<ul class="pull-left">
									<li><span class="glyphicon glyphicon-tags"></span><a
										href="note1.html">&nbsp&nbsp${t.name }</a></li>
								</ul>
								<div id="operate" class="pull-right">
									<a href="" data-report="true"
										data-report-link="notes.php?mod=view&amp;u=19751&amp;id=5b20948d5ca1351a9542b19cfd93d0fe"
										data-report-point="#tagsbar" rel="nofollow">举报</a>
								</div>
							</div>
						</div>
						<div class="row">
                        <div class="col-md-4">
                            <div id="share-btns11">
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
                        <div class="col-md-4 kun">
                            <div id="praise-btn" class="dh200" data-praise="true" data-type="notes" data-id="5b20948d5ca1351a9542b19cfd93d0fe" data-textselector="b" data-point="#tagsbar">
                                <span class="glyphicon glyphicon-thumbs-up" style="font-size: 26px;color: white;"></span>
                                <b style="font-size: 26px;color: #fff;">给个赞</b>
                                <em class="pull-right" style="color: white;padding-top: 5px">
                                    0人点赞
                                </em>
                            </div>
                        </div>
                        <div class="col-md-4 kun1">
                            <div id="favorite-btn" class="dh200" data-fav="true" data-type="notes" data-title="我的2016网站梦0.0.4 （选型结束keystone）" data-id="5b20948d5ca1351a9542b19cfd93d0fe" data-textselector="b" data-point="#tagsbar">
                                <span class="glyphicon glyphicon-heart" style="font-size: 26px"> </span>
                                <b style="color: black;font-size: 26px;">收藏</b>
                                <em class="pull-right" style="padding-top: 5px">
                                    0人收藏
                                </em>
                            </div>
                        </div>
                    </div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="titleBar bs-callout bs-callout-info left">
							<h3>
								<b>评论</b>
							</h3>
							已有 <span class="badge">${post.commentCount+1}</span> 条评论；以下用户言论只代表其个人观点，不代表我们的观点或立场。
						</div>
						<form action="${ctx}/article/commentsave/${post.id}" method = "post">
							<input type="hidden"id="commentPostId" name = "commentPostId" value = "${post.id}">
						    <input type="text" placeholder="评论人姓名" id="commentAuthor" name = "commentAuthor">
							<textarea class="comment-text" placeholder="你想说的话" id="commentContent" name = "commentContent"></textarea>
							<button type="submit" class="btn_comment btn btn-primary pull-right" data-text="发表评论" id="commentContent" name="commentContent">发表评论</button>
						</form>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="titleBar comments left">
							<h3>
								<b>最新评论</b>
							</h3>
						</div>
						<ul class="article_talent11">
						
						<c:forEach items="${comment}" var="comment" varStatus="status">
							<li>
								<div>
									<img class="media-left"
										src="${ctx}/static/bootstrap-3.3.5-dist/image/789.jpg">
									<div class="media-body111">
										<span> <a href="" target="_blank">${comment.commentAuthor}</a>
										</span>
										<fmt:formatDate pattern="yyyy年MM月dd" value="${comment.commentDate}" />
										 <span class="storey">${lou.c+1-status.count}F</span>
										<p>${comment.commentContent}</p>
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
			<div class="col-xs-6 col-md-3">
				<div class="panel-heading  clearfix ma">
                    <img class = "xiangxitu" src="${ctx}/static/bootstrap-3.3.5-dist/image/33.jpg" >
                    <h4><a style="color:#3498db" class="zuoze1" href="">${u.displayName}</a><span class = "badge">作者</span></h4>
                </div>
                <ul id="author_count" class="cl"> 
                	<li> 
                		<i>${sum.a}</i><br> 
                		<span>总笔记数</span> 
                	</li>
                	<li> 
                		<i>${sum.b}</i><br>  
                		<span>总阅读量</span> 
                	</li>
                </ul>
                <div class="col-xs-6 col-md-12">
                        <h3 class="titlebar" style="margin-top: 0;">
                            <span class="glyphicon glyphicon-option-vertical">作者最新</span>
                        </h3>
                        <ol class="list-group">
                            <c:forEach items="${newpost2}" var="p" varStatus="status">
            					<c:choose>
				    				<c:when test="${status.count <= 3}">
				       				     <a href="${ctx}/index/detail/${p.id}" target="_blank" class="list-group-item"><i class="toprank_blue">${status.count}</i>${p.postTitle}</a>
				   					</c:when>
				   					<c:otherwise>
				       					<a href="${ctx}/index/detail/${p.id}" target="_blank" class="list-group-item"><i>${status.count}</i>${p.postTitle}</a>
				    				</c:otherwise>
								</c:choose>
							</c:forEach>
                        </ol>
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
	<script type="text/javascript"
		src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery.js"></script>
	<script type="text/javascript"
		src="${ctx}/static/bootstrap-3.3.5-dist/js/zzsc.js"></script>
	<script type="text/javascript"
		src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/static/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery.timeago.js"></script>
	 <script>
        $(function(){
            $("#dm").mouseover(function(){
                $("#dm").popover({
                    dataToggle:"popover",
                    html:true,
                   content:'<img src="${ctx}/static/bootstrap-3.3.5-dist/image/misc.png" style="border-radius: 0;float: none;">'
                }).popover('toggle');
            });
        });
    </script>
    <script>
    $(function(){ 
    $(".timeago").timeago(); 
	});
    </script>
    <script>
        $(function(){
            $("#dm1").mouseover(function(){
                $("#dm1").popover({
                    dataToggle:"popover",
                    html:true,
                    content:'©版权归 水末 所有！如需转载，必须在页面明显位置给出原文链接！商业用途请 联系我！'
                }).popover('toggle');
            });
        });
    </script>
</body>
</html>