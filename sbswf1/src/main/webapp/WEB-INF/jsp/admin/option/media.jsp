<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="t1" value="${thumbnailSizew}" />
<c:set var="t2" value="${thumbnailSizeh}" />
<c:set var="t3" value="${mediumSizew}" />
<c:set var="t4" value="${mediumSizeh}" />
<c:set var="t5" value="${largeSizew}" />
<c:set var="t6" value="${largeSizeh}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>w3c | 设置-媒体选项</title>
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
                        <li><a href="${ctx}/admin/option/general">常规</a></li>
                        <li><a href="${ctx}/admin/option/writting">撰写</a></li>
                        <li><a href="${ctx}/admin/option/read">阅读</a></li>
                        <li><a href="${ctx}/admin/option/discuss">讨论</a></li>
                        <li class="active"><a href="${ctx}/admin/option/media">多媒体</a></li>
						<li><a href="${ctx}/admin/option/fixed_link">固定链接</a></li>
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
                            <h5>媒体选项</small></h5>
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
                            <form method="post" class="form-horizontal" action="${ctx}/admin/option/update6">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">图像大小</label>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
										<p class="help-block m-b-none">
											下面列出来的尺寸决定插入媒体库中的图像之最大尺寸。以像素为单位。
										</p>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">缩略图大小</label>
                                    <div class="col-sm-10" >
                                        <lable for="thumbnail_size_w">宽度</lable><input name="thumbnail_size_w" type="number" step="1" min="1" max="200" id="thumbnail_size_w" value="${t1.optionValue}" class="small-text" />
                                        <lable  for="thumbnail_size_h">高度</lable><input name="thumbnail_size_h" type="number" step="1" min="1" max="200"  id="thumbnail_size_h" value="${t2.optionValue}" class="small-text" />
                                    </div>
                                    <label class="col-sm-10" >
                                        <input type="checkbox" name="thumbnail_crop" id="thumbnail_crop" value="1" checked="checked"/>
                                       <span>总是裁剪缩略图到这个尺寸（一般情况下，缩略图应保持原始尺寸）</span>
                                    </label>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">中等大小</label>
									<div class="col-sm-10">
                                        <lable for="medium_size_w">最大宽度</lable><input name="medium_size_w" type="number" step="1" min="1" max="500"  id="medium_size_w" value="${t3.optionValue}" class="small-text" />
                                        <lable for="medium_size_h">最大高度</lable><input name="medium_size_h" type="number" step="1" min="1" max="500"  id="medium_size_h" value="${t4.optionValue}" class="small-text" />
                                    </div>
								</div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">大尺寸</label>
                                    <div class="col-sm-10">
                                        <lable for="large_size_w">最大宽度</lable><input name="large_size_w" type="number" step="1" min="1" max="1024" id="large_size_w" value="${t5.optionValue}" class="small-text" />
                                        <lable for="large_size_h">最大高度</lable><input name="large_size_h" type="number" step="1" min="1" max="1024" id="large_size_h" value="${t6.optionValue}" class="small-text" />
                                    </div>
                                </div>

                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-lg-2 control-label">文件上传</label>
                                    <div class="col-lg-10">
                                        <lable for="uploads_use_yearmonth_folders">
                                        <input type="checkbox" name="uploads_use_yearmonth_folders" id="uploads_use_yearmonth_folders" value="1" checked= "checked"/>
										<span >以年-月目录形式组织上传内容。</span>
                                        </lable>
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
