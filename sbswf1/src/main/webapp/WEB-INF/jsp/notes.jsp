<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="t1" value="${newname1}" />
<c:set var="t2" value="${newname2}" />
<c:set var="sums" value="${sums}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>笔记</title>
    <style>
    </style>
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/mycss.css">
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link type="text/css" href="${ctx}/static/bootstrap-3.3.5-dist/css/zzsc.css" rel="stylesheet" />
</head>
<body>
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
                    <li class="active"><a href="${ctx}/index/notes">笔记</a></li>
                    <li><a href="${ctx}/index/wht/${-1}">话题</a></li>
                    <li><a href="feed.html">发现</a></li>
                    <li><a href="http://www1.w3cfuns.com/course.php">教程</a></li>
                </ul>
            </div>
        </div>
    </nav>
<!--中间整块内容-->
    <div class="container-fluid">
        <div class="row">
            <!--笔记-->
          <form id="pageForm" action="${ctx}/index/notes" method="POST">
           <input type="hidden" name="id1" id = "id1" value="${vo.id1}">
           <input type="hidden" name="id2" id = "id2" value="${vo.id2}">
           <input type="hidden" name="id3" id = "id3" value="${vo.id3}">
            <div class="col-xs-12 col-md-9">
                <h3 class="titlebar" style="margin-top: 0;"><span class="glyphicon glyphicon-option-vertical">笔记</span></h3>
                
                <div id="biji">
                    <dl class="qwer">
                        <dt>分类：</dt>
                        <dd>
                        	<c:choose> 
							  <c:when test="${empty vo.id1 or vo.id1==''}">
							  	<a class="selected" href="javascript:joshua.searchSubmit(-1,null,null);" >全部</a>
							  </c:when> 
							  <c:otherwise>
							  	<a href="javascript:joshua.searchSubmit(-1,null,null);" >全部</a>
							  </c:otherwise> 
							</c:choose>
	                        <c:forEach items="${newname}" var="p">
		                        <c:choose> 
								  <c:when test="${p.id==vo.id1}">
								  	<a class="selected" href="javascript:joshua.searchSubmit(${p.id},null,null);" >${p.name}</a>
								  </c:when> 
								  <c:otherwise>
								  	<a href="javascript:joshua.searchSubmit(${p.id},null,null);" >${p.name}</a>
								  </c:otherwise> 
								</c:choose>
							</c:forEach>
                        </dd>
                    </dl>
                    <dl class="qwer">
                        <dt>类型：</dt>
                        <dd>
                            <c:choose> 
							  <c:when test="${empty vo.id2 or vo.id2==''}">
							  	<a class="selected" href="javascript:joshua.searchSubmit(null,-1,null);" >全部</a>
							  </c:when> 
							  <c:otherwise>
							  	<a href="javascript:joshua.searchSubmit(null,-1,null);" >全部</a>
							  </c:otherwise> 
							</c:choose>
	                        <c:forEach items="${newname1}" var="p">
		                        <c:choose> 
								  <c:when test="${p.id==vo.id2}">
								  	<a class="selected" href="javascript:joshua.searchSubmit(null,${p.id},null);" >${p.name}</a>
								  </c:when> 
								  <c:otherwise>
								  	<a href="javascript:joshua.searchSubmit(null,${p.id},null);" >${p.name}</a>
								  </c:otherwise> 
								</c:choose>
							</c:forEach>
                        </dd>
                    </dl>
                    <dl class="qwer">
                        <dt>属性：</dt>
                        <dd>
                            <c:choose> 
							  <c:when test="${empty vo.id3 or vo.id3==''}">
							  	<a class="selected" href="javascript:joshua.searchSubmit(null,null,-1);" >全部</a>
							  </c:when> 
							  <c:otherwise>
							  	<a href="javascript:joshua.searchSubmit(null,null,-1);" >全部</a>
							  </c:otherwise> 
							</c:choose>
	                        <c:forEach items="${newname2}" var="p">
		                        <c:choose> 
								  <c:when test="${p.id==vo.id3}">
								  	<a class="selected" href="javascript:joshua.searchSubmit(null,null,${p.id});" >${p.name}</a>
								  </c:when> 
								  <c:otherwise>
								  	<a href="javascript:joshua.searchSubmit(null,null,${p.id});" >${p.name}</a>
								  </c:otherwise> 
								</c:choose>
							</c:forEach>
                        </dd>
                    </dl>
                    <dl class="qwer">
                        <dt>排序：</dt>
                        <dd>
                            <a href="notes.html" class="selected">最新发布</a>
                            <a href="notes.html">浏览最多</a>
                            <a href="notes.html">评论最多</a>
                            <a href="notes.html">点赞最多</a>
                            <a href="notes.html">收藏最多</a>
                        </dd>
                    </dl>
                </div>
                <div class="panel panel-default">
                <c:forEach items="${newcommendpost}" var="c" varStatus="status">
                    <div class="panel-heading  clearfix">
                        <img src="${ctx}/static/bootstrap-3.3.5-dist/image/33.jpg" >
                        <h4><a class="zuoze" href="">${c.authorName}</a><span> | </span><a class="biji" target="_blank" href="${ctx}/index/detail/${c.postId}">${c.title}</a></h4>
                        <p>发布于<time class="timeago" datetime="<fmt:formatDate pattern="yyyy-MM-dd'T'HH:mm:ss'Z'+08:00"
							value="${c.postDate}" />"></time>&nbsp&nbsp&nbsp 浏览：${c.viewCount} &nbsp&nbsp&nbsp类型：
                            <a style="color: #bdc3c7" onmouseover="$(this).tooltip('show')" data-toggle="tooltip" data-placement="top" title="查看属性：“${c.attr}”下的所有笔记">
                                ${c.attr} </a>
                             -
                            <a style="color: #bdc3c7" onmouseover="$(this).tooltip('show')" data-toggle="tooltip" data-placement="top" title="查看类型：“${c.type}”下的所有笔记">
                                ${c.type} </a>
                            &nbsp&nbsp&nbsp分类：
                           <a style="color: #bdc3c7" onmouseover="$(this).tooltip('show')" data-toggle="tooltip" data-placement="top" title="查看系统分类：“${c.category}”下的所有笔记">
                                ${c.category} </a>

                        </p>
                    </div>
                    <div class="panel-body">
                      	${c.postShortContent}
                    </div>
                </c:forEach>
                </div>
                <nav style="text-align: center;">
                    <ul class="pagination pagination-lg">
                        <!-- 上一页 -->                    
						<c:choose> 
						  <c:when test="${page.hasPrePage}"><li><a href="javascript:joshua.pageSubmit(${page.pageNum-1});" aria-label="Previous"><span aria-hidden="true">上一页</span></a></li></c:when> 
						  <c:otherwise><li class="disabled"><a aria-label="Previous"><span aria-hidden="true">上一页</span></a></li></c:otherwise> 
						</c:choose>
											
						<c:forEach begin="1" end="${page.pageCount}" step="1" varStatus="status">
						  <c:choose> 
						    <c:when test="${page.pageNum == status.count}"><li class="active"><a>${status.count}</a></li></c:when> 
						    <c:otherwise><li><a href="javascript:joshua.pageSubmit(${status.count});">${status.count}</a></li></c:otherwise> 
						  </c:choose>
						</c:forEach>
						                        
						<!-- 下一页 -->                        
						<c:choose> 
						  <c:when test="${page.hasNextPage}"><li><a href="javascript:joshua.pageSubmit(${page.pageNum+1});" aria-label="Next"><span aria-hidden="true">下一页</span></a></li></c:when> 
						  <c:otherwise><li class="disabled"><a aria-label="Next"><span aria-hidden="true">下一页</span></a></li></c:otherwise> 
						</c:choose>
						<input type="hidden" name="pageNum" id="pageNum" value="${page.pageNum}">

                    </ul>
                </nav>
            </div>
          </form>  
            <!--发布笔记、推荐笔记、火热笔记、笔记达人-->
            <div class="col-xs-6 col-md-3">
                <div class="row">
                    <!--发布笔记-->
                    <div class="col-xs-6 col-md-12" style="margin: 0 0 10px;">
                        <a href="#" class="btn btn-primary btn-lg btn-block active" role="button">发布笔记</a>
                    </div>
                    <div class="col-xs-6 col-md-12 leixing">
                        总笔记：
                        <span>${sums.v}</span>
                        ，总阅读：
                        <span>${sums.k}</span>
                    </div>
                    <!--空白-->
                    <div class="col-xs-6 col-md-12" style="height:250px;">
                    </div>
                    <!--推荐笔记-->
                    <div class="col-xs-6 col-md-12">
                        <h3 class="titlebar" style="margin-top: 0;">
                            <span class="glyphicon glyphicon-option-vertical">推荐笔记</span>
                        </h3>
                        <ol class="list-group">
                            <c:forEach items="${post}" var="p" varStatus="status">
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
                    <!--图片-->
                    <div class="col-xs-6 col-md-12" style="height:250px;margin-bottom: 20px;text-align: center;">
                        <img src="${ctx}/static/bootstrap-3.3.5-dist/image/456.jpg">
                    </div>
                    <!--火热笔记-->
                    <div class="col-xs-6 col-md-12">
                        <h3 class="titlebar" style="margin-top: 0;">
                            <span class="glyphicon glyphicon-option-vertical">火热笔记</span>
                        </h3>
                        <ol class="list-group">
                            <c:forEach items="${hotpost}" var="h" varStatus="status">
            					<c:choose>
				    				<c:when test="${status.count <= 3}">
				       				     <a href="${ctx}/index/detail/${h.id}" target="_blank" class="list-group-item"><i class="toprank_orange">${status.count}</i>${h.postTitle}</a>
				   					</c:when>
				   					<c:otherwise>
				       					<a href="${ctx}/index/detail/${h.id}" target="_blank" class="list-group-item"><i>${status.count}</i>${h.postTitle}</a>
				    				</c:otherwise>
								</c:choose>
							</c:forEach>
                        </ol>
                    </div>
                   
                    <!--笔记达人-->
                    <div class="col-xs-6 col-md-12">
                        <h3 class="titlebar" style="margin-top: 0;">
                            <span class="glyphicon glyphicon-option-vertical">笔记达人</span>
                        </h3>
                        <ul class="article_talent">
                        <c:forEach items="${expertpost}" var="e" varStatus="status">
                            <li>
                                <div>
                                    <img class="media-left" src="${ctx}/static/bootstrap-3.3.5-dist/image/789.jpg">
                                    <div class="media-body">
                                        <span>
                                            <a href="" target="_blank">${e.displayName}</a>
                                        </span>
                                        <span>
                                            <a  style="color: #999;" href="${ctx}/index/detail/${e.id}" target="_blank">${e.postTitle}</a>
                                        </span>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                        </ul>
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
    <script type="text/javascript" src="${ctx}/static/bootstrap-3.3.5-dist/js/jquery.timeago.js"></script>
    <script>
    $(function(){ 
    $(".timeago").timeago(); 
	});
    </script>
    <script>
	var joshua={
			searchSubmit:function(id1,id2,id3){
				if(id1){
					document.getElementById("id1").value=(id1==-1?'':id1);
				}
				if(id2){
					document.getElementById("id2").value=(id2==-1?'':id2);
				}
				if(id3){
					document.getElementById("id3").value=(id3==-1?'':id3);
				}
				document.getElementById("pageNum").value=1;
				document.getElementById("pageForm").submit();
				
			},
			pageSubmit:function(page){
				document.getElementById("pageNum").value=page;
				document.getElementById("pageForm").submit();
				
			}
	}
</script> 
<script>
    $(function(){
    	$("")
    	});   	
</script>
</body>
</html>