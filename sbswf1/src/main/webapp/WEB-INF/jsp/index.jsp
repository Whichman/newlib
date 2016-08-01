<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>前端网</title>
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/mycss.css">
    <link rel="stylesheet" href="${ctx}/static/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <link type="text/css" href="${ctx}/static/bootstrap-3.3.5-dist/css/zzsc.css" rel="stylesheet" />
</head>
<body>
<!--导航栏-->
    <nav id="navbar" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">
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
                    <li class="active"><a href="${ctx}/index">首页</a></li>
                    <li><a href="${ctx}/index/notes">笔记</a></li>
                    <li><a href="${ctx}/index/wht/${-1}">话题</a></li>
                    <li><a href="${ctx}/feed">发现</a></li>
                    <li><a href="http://www1.w3cfuns.com/course.php">教程</a></li>
                </ul>
            </div>
        </div>
    </nav>
<!--中间插播的图片-->
    <div class="container cw">
        <a href="https://www.pinbot.me/activity/web/?hmsr=W3Cfuns&hmpl=web%E5%89%8D%E7%AB%AF%E7%BA%BF%E4%B8%8A%E6%8B%9B%E8%81%98%E4%B8%93%E5%9C%BA&hmcu=&hmkw=&hmci=" target="_blank">
            <img src="http://ubmcmm.baidustatic.com/media/v1/0f000nLv_p5wNej2BFDwe6.gif" width="1200">
        </a>
    </div>
<!--笔记分类和轮播图片-->
    <main id="one" class="container bgfff">
        <!--笔记分类-->
    <div id="column-left">
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">笔记分类</span></h3>
            <div id="note-category">
         
            <c:forEach items="${newname}" var="p">
            	<a href="${ctx}/index/notes" target="_blank">${p.name}</a>
			</c:forEach>
			
        </div>
    </div>
        <!--轮播图片-->
    <div id="column-right">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <a href="http://edu.hxsd.com/topic/websy/?w3cfuns"><img src="http://ubmcmm.baidustatic.com/media/v1/0f0000niWDTgkpERd7u1Ys.jpg"></a>
                </div>
                <div class="item">
                    <a href="https://www.pinbot.me/activity/web/?hmsr=W3Cfuns&hmpl=web%E5%89%8D%E7%AB%AF%E7%BA%BF%E4%B8%8A%E6%8B%9B%E8%81%98%E4%B8%93%E5%9C%BA&hmcu=&hmkw=&hmci="><img src="http://ubmcmm.baidustatic.com/media/v1/0f000D3Rc9Gg7BY9kUN9Os.jpg"></a>
                </div>
                <div class="item">
                    <a href="http://j.jikexueyuan.com/train/webdeveloper?hmsr=w3cfuns_banner1_jiuye_web_0512"><img src="http://ubmcmm.baidustatic.com/media/v1/0f000nSUbeK9uRC-AqvWAs.jpg "></a>
                </div>
                <div class="item">
                    <a href="http://www.zhufengpeixun.cn/"><img src="http://ubmcmm.baidustatic.com/media/v1/0f0007iyjCsRkBDDFI8jpf.png "></a>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        	
        	</a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    </main>
<!--最新笔记、推荐笔记、快报-->
    <div class="container bgfff">
        <!--最新笔记-->
        <div class="col-xs-6 col-md-3">
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">最新笔记</span></h3>
            <ol class="list-group">
            <c:forEach items="${newpost}" var="p" varStatus="status">
            	<c:choose>
    				<c:when test="${status.count <= 3}">
       				     <a href="${ctx}/index/detail/${p.id}" class="list-group-item" target="_blank"><i class="toprank_blue">${status.count}</i>${p.postTitle}</a>
   					</c:when>
   					<c:otherwise>
       					<a href="${ctx}/index/detail/${p.id}" class="list-group-item" target="_blank"><i>${status.count}</i>${p.postTitle}</a>
    				</c:otherwise>
				</c:choose>
			</c:forEach>
            </ol>
            <div style="height: 80px;"></div>
        <!--值得收藏-->
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">值得收藏</span></h3>
            <ol class="list-group">
            <c:forEach items="${collectpost}" var="p" varStatus="status">
            	<c:choose>
    				<c:when test="${status.count <= 3}">
       				     <a href="${ctx}/index/detail/${p.id}" class="list-group-item" target="_blank"><i class="toprank_orange">${status.count}</i>${p.postTitle}</a>
   					</c:when>
   					<c:otherwise>
       					<a href="${ctx}/index/detail/${p.id}" class="list-group-item" target="_blank"><i>${status.count}</i>${p.postTitle}</a>
    				</c:otherwise>
				</c:choose>
			</c:forEach>
            </ol>
        </div>
        <!--推荐笔记-->
        <div class="col-xs-6 col-md-6">
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">推荐笔记</span></h3>
            <!--class为"panel panel-default"都是推荐的笔记-->
            <div class="panel panel-default">
            <c:forEach items="${commendpost}" var="c" varStatus="status">
            	<div class="panel-heading  clearfix">
                    <img src="${ctx}/static/bootstrap-3.3.5-dist/image/11.jpg" >
                    <h4><a class="zuoze" href="">${c.displayName}</a><span> | </span><a class="biji" target="_blank" href="${ctx}/index/detail/${c.id}">${c.postTitle}</a></h4>
                    <p>浏览:${c.viewCount} &nbsp&nbsp&nbsp 回复:${c.commentCount} &nbsp&nbsp&nbsp 分类:
                        <a style="color: #bdc3c7" onmouseover="$(this).tooltip('show')" data-toggle="tooltip" data-placement="top" title="查看系统分类：“${c.name}”下的所有笔记">
                            ${c.name}</a>
                    </p>
                </div>
                <div class="panel-body">
                    ${c.postShortContent}
                </div>
			</c:forEach>
            </div>  
        </div>
        <!--快报-->
        <div class="col-xs-6 col-md-3">
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">快报</span></h3>
            <ul style="right: 0;top: 0;position: absolute;padding-top: 10px;" class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">最近更新</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">建议反馈</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <ol class="list-group">
                        <a href="" class="list-group-item"><span class="glyphicon glyphicon-heart">05-08</span>：评论能直接回复代码啦</a>
                        <a href="" class="list-group-item"><span class="glyphicon glyphicon-heart">05-05</span>：搜索框Bug修复等</a>
                        <a href="" class="list-group-item"><span class="glyphicon glyphicon-heart">05-06</span>：水印、收藏、版权优化</a>
                    </ol>
                </div>
                <div role="tabpanel" class="tab-pane" id="profile" style="padding:45px 0;text-align: center;">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">反馈缺陷bug</button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">提交建议想法</button>
                    </div>
                </div>
            </div>
            <!--工具库-->
            <h3 class="titlebar">
                <span class="glyphicon glyphicon-option-vertical">工具库
                    <a href="http://www.w3cfuns.com/tools" ><span class="glyphicon glyphicon-share"></span></a>
                </span>
            </h3>
            <!--轮播图插件有bug待修复-->
            <div class="box">
                <div class="picbox">
                    <ul class="piclist mainlist">
                        <li><a href="#" target="_blank"><img src="${ctx}/static/bootstrap-3.3.5-dist/image/1.png" height="60" width="60" /></a></li>
                        <li><a href="#" target="_blank"><img src="${ctx}/static/bootstrap-3.3.5-dist/image/2.png" height="60" width="60" /></a></li>
                        <li><a href="#" target="_blank"><img src="${ctx}/static/bootstrap-3.3.5-dist/image/3.png" height="60" width="60" /></a></li>
                        <li><a href="#" target="_blank"><img src="${ctx}/static/bootstrap-3.3.5-dist/image/4.png" height="60" width="60" /></a></li>
                        <li><a href="#" target="_blank"><img src="${ctx}/static/bootstrap-3.3.5-dist/image/5.png" height="60" width="60" /></a></li>
                    </ul>
                    <ul class="piclist swaplist"></ul>
                </div>
                <div class="og_prev"></div>
                <div class="og_next"></div>
            </div>
            <ul id="asd">
                <li>
                    <span>代码辅助</span>
                    <a href="redirect.php?mod=tools&id=be7619e5ee4ba7df292172f90441dcf9" target="_blank">正则调试</a>
                    <a href="redirect.php?mod=tools&id=fbf156423d25f83b6c06383b0923009e" target="_blank">JS&CSS压缩</a>
                    <a href="redirect.php?mod=tools&id=8a9066f66254794bb9fdf9cc93c28c3c" target="_blank">JSON格式化</a>
                </li>
                <li>
                    <span>对照表</span>
                    <a href="redirect.php?mod=tools&id=49da85ffa9a6a1e5fce42c22246f6b67" target="_blank">HTTP状态码</a>
                    <a href="redirect.php?mod=tools&id=58307b356eb23cacb736ed5d155182c4" target="_blank">HTML5/CSS3支持情况</a>
                    <a href="redirect.php?mod=tools&id=88f688f33a3e7ddb979fe1ff06b60705" target="_blank">ASCII对照</a>
                </li>
                <li>
                    <span>字体图标</span>
                    <a href="redirect.php?mod=tools&id=f4575f382d92bdf74f3ce469909a693f" target="_blank">Icomoon</a>
                    <a href="redirect.php?mod=tools&id=cd9c28e5814a4c298019d86d36d23779" target="_blank">FontAwesome</a>
                    <a href="redirect.php?mod=tools&id=d681e45a285fd86780d799749cf61b10" target="_blank">阿里矢量图标库</a>
                </li>
                <li>
                    <span>API手册</span>
                    <a href="redirect.php?mod=tools&id=15ccf82830ea47f7d36c993f36e4674d" target="_blank">HTML5</a>
                    <a href="redirect.php?mod=tools&id=db1bfb3351dd6f82e37040533241afc6" target="_blank">CSS3</a>
                    <a href="redirect.php?mod=tools&id=557b528dc9b337d4a238d47ba6bd58b5" target="_blank">JavaScript</a>
                    <a href="redirect.php?mod=tools&id=aaa15dedcf08e783452b39b76efd9eb4" target="_blank">jQuery</a>
                </li>
                <li>
                    <span>静态CDN</span>
                    <a href="redirect.php?mod=tools&id=986f6e6a0025cd176eb9bded79e93420" target="_blank">百度静态</a>
                    <a href="redirect.php?mod=tools&id=f859b74d228e0164cbd27cd311c91d2d" target="_blank">BootCDN</a>
                    <a href="redirect.php?mod=tools&id=c5a20dc37336948d537ba2b7bb1f0078" target="_blank">又拍云CDN</a>
                    <a href="redirect.php?mod=tools&id=dc674efa6325e3aa653a502744b21e97" target="_blank">360CDN</a>
                </li>
            </ul>
            <a href="http://www.w3cfuns.com/tools" target="_blank" id="software-list-more">更多软件工具</a>
            <!--空白-->
            <div class="box11" style="padding: 15px;width: 100%;height: 240px;background: #fff;">
            </div>
            <h3 class="titlebar"><span class="glyphicon glyphicon-option-vertical">等您参与</span></h3>
            <!--等您参与下面的图-->
            <div id="yy">
                <c:forEach items="${chats}" var="cs" varStatus="status">
                      <a href="${ctx}/index/wht/${cs.id}" target="_blank">
                          <div class="wht_box">
                             <img style="position:relative;" src="${ctx}/static/bootstrap-3.3.5-dist/image/54.jpg">
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
<!--页脚-->
    <footer>
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
        <p style="margin: 0;text-align: center;color: #aaa;background: none;padding:0;">"Copyright ©"
            <a href="">W3Cfuns.com</a>
            "All Rights Reserved."
            <a href="http://www.miitbeian.gov.cn/">京ICP备10055601号-2</a>
        </p>
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