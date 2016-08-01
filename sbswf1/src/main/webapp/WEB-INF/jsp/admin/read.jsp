<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="p1" value="${postsPerPage}" />
<c:set var="p2" value="${postsPerRss}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>w3c | 设置-阅读</title>
    <link href="${ctx}/static/backstage/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/style.css" rel="stylesheet">
    <link href="${ctx}/static/backstage/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${ctx}/static/backstage/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">David Williams</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="contacts.html">Contacts</a></li>
                            <li><a href="mailbox.html">Mailbox</a></li>
                            <li class="divider"></li>
                            <li><a href="login.html">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li class="active">
                    <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">设置</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="${ctx}/admin/general">常规</a></li>
                        <li><a href="${ctx}/admin/writting">撰写</a></li>
                        <li class="active"><a href="${ctx}/admin/read">阅读</a></li>
                        <li><a href="${ctx}/admin/discuss">讨论</a></li>
                        <li><a href="${ctx}/admin/media">多媒体</a></li>
						<li><a href="${ctx}/admin/fixed_link">固定链接</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to INSPINIA+ Admin Theme.</span>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a7.jpg">
                                </a>
                                <div class="media-body">
                                    <small class="pull-right">46h ago</small>
                                    <strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/a4.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right text-navy">5h ago</small>
                                    <strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
                                    <small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="dropdown-messages-box">
                                <a href="profile.html" class="pull-left">
                                    <img alt="image" class="img-circle" src="img/profile.jpg">
                                </a>
                                <div class="media-body ">
                                    <small class="pull-right">23h ago</small>
                                    <strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
                                    <small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="mailbox.html">
                                    <i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="login.html">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
            </ul>
        </nav>
        </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>阅读设置</small></h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">帮助</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content">
                            <form method="post" class="form-horizontal" action="${ctx}/admin/update4">
									<div class="form-group">
										<label class="col-sm-2 control-label">首页显示 </label>
										<div class="col-sm-10"  id="front-static-pages">
											<fieldset>
											<div>
												<label>
													<input type="radio" name="show_on_front" value="posts"  class="tag"  checked="checked"/> 您的的最新文章
												</label>
											</div>
											<div>
												<label>
													<input type="radio" name="show_on_front" value="page"  class=" tag"  checked="checked"/>一个<a href="edit.php?post_type=page">静态页面</a>（在下方选择）
												</label>
												<ul>
													<li>
														<label for="page_on_front">主页：
															<select name='page_on_front' id='page_on_front'>
																<option value="0">&mdash;选择&mdash;</option>
																<option class="level-0" value="2">示例页面</option>
																<option class="level-1" value="27">&nbsp;&nbsp;&nbsp;一个页面</option>
															</select>
														</label>
													</li>
													<li>
														<label for="page_for_posts">文章页：
															<select name='page_for_posts' id='page_for_posts'>
																<option value="0">&mdash;选择&mdash;</option>
																<option class="level-0" value="2">示例页面</option>
																<option class="level-1" value="27">&nbsp;&nbsp;&nbsp;一个页面</option>
															</select>
														</label>
													</li>
												</ul>
											</div>
											</fieldset>
										</div>
									</div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">博客页面至多显示</label>
                                    <div class="col-sm-10">
										<input name="posts_per_page" type="number" step="1" min="1" max="20" id="posts_per_page" value="${p1.optionValue}" class="small-text" /> <span>篇文章</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">Feded中显示最近</label>
									<div class="col-sm-10">
										<input name="posts_per_rss" type="number" step="1" min="1" max="20" id="posts_per_rss" value="${p2.optionValue}" class="small-text" /> <span>个项目</span>
									</div>
								</div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">对于feed中的每篇文章，显示</label>
                                    <div class="col-sm-10">
										<div>
											<label>
												<input type="radio" name="rss_use_excerpt" value="0"   checked="checked" /> 您的的最新文章
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name="rss_use_excerpt" value="1"   /> 您的的最新文章
											</label>
										</div>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-lg-2 control-label">对搜索引擎的可见性</label>
                                    <div class="col-lg-10">
										<label for="blog_public">
											<input type="checkbox" name="blog_public" id="blog_public" value="0" />
											建议搜索引擎不索引本站点
										</label><br/>
										<p class="description">搜索引擎将本着自觉自愿的原则对待WordPress提出的请求。并不是所有搜索引擎都遵守这类请求。</p>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-white" type="submit">返回</button>
                                        <button class="btn btn-primary" type="submit" name="submit" id="submit">保存更改</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       

        </div>
        </div>


    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
</body>

</html>
