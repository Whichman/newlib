<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="option1" value="${w1}" />
<c:set var="option2" value="${w2}" />
<c:set var="option3" value="${w3}" />
<c:set var="option4" value="${w4}" />
<c:set var="option5" value="${w5}" />
<c:set var="option6" value="${w6}" />
<c:set var="option7" value="${w7}" />
<c:set var="option8" value="${w8}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>w3c | 设置-撰写</title>
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
                        <li class="active"><a href="${ctx}/admin/writting">撰写</a></li>
                        <li><a href="${ctx}/admin/read">阅读</a></li>
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
                            <h5>撰写设置</small></h5>
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
                        <c:if test="${!empty message}">
								<p class="alert alert-success" role="alert">${message}</p>
							</c:if> 
                            <form method="post" class="form-horizontal" action="${ctx}/admin/update2">
							<div class="form-group">
									<label class="col-lg-2 control-label" for="default_category">
									默认文章分类目录</label>
                                    <div class="col-lg-10">
                                        <select  class="postform" id="default_category" name="default_category">
												<option value="0">男</option>
												<option value="${option1.optionValue}" select ="selelcted">女</option>
												<option value="3">青年</option>
												<option value="4">中年</option>
												<option value="3">老年</option>
												<option value="4">社会</option>
												<option value="2">娱乐</option>
												<option value="3">历史</option>
												<option value="4">技术</option>
										</select>										
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for ="default_post_format">默认文章形式</label>
                                    <div class="col-lg-10">
                                        <select id="default_post_format" name="default_post_format">
												<option value="0">标准</option>
												<option value="${option2.optionValue}" selected="selected">日志</option>
												<option value="chat">聊天</option>
												<option value="gallery">相册</option>
												<option value="link">链接</option>
												<option value="image">图像</option>
												<option value="quote">引语</option>
												<option value="status">状态</option>
												<option value="video">视频</option>
												<option value="audio">音频</option>
											</select>										
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">通过电子邮件发布</label>
                                    <div class="col-sm-10">
										<span class="help-block m-b-none">
										通过电子邮件发布设定能让您通过发送您文章的内容到WordPress来发布。此信箱接收到的任何信件都将被发布，所以将此地址保密是一个好主意。以下是一些随机字符串供您使用：
                                            <kbd>AaFmT8D1</kbd>、<kbd>NctQ9xqC</kbd>、<kbd>JNIm6Qqh</kbd>。
										</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">邮件服务器</label>
                                    <div class="col-sm-10">
										<input name="mailserver_url" type="text" id="mailserver_url" value="${option3.optionValue}" class="regular-text code" />
									<label for="mailserver_port">端口</label>
									<input name="mailserver_port" type="text" id="mailserver_port" value="${option4.optionValue}" class="small-text" /></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">登录名</label>
                                    <div class="col-sm-10">
										<input type="text"name="mailserver_login" id="mailserver_login" value="${option5.optionValue}" class="regular-text ltr"/>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">密码</label>
                                    <div class="col-sm-10">
										<input type="password"  name="mailserver_pass" id="mailserver_pass"value="${option6.optionValue}"  class="regular-text ltr"/>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-lg-2 control-label" for="default_email_category">
									默认邮件发表分类目录
                                    </label>
                                    <div class="col-lg-10">
                                        <select class="postform" id="default_email_category" name="default_email_category">
												<option value="${option7.optionValue}" select ="selelcted">男</option>
												<option value="1" >女</option>
												<option value="3">分类目录2</option>
												<option value="4">&nbsp;&nbsp;&nbsp;分类目录2.1</option>
										</select>										
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">更新服务</label>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-10">
										<p class="help-block m-b-none" for="ping_sites">
									       在您发表新文章时，WordPress会自动通知站点更新服务。要获取更多资讯，请参见Codex上的<a href=\"https://codex.wordpress.org/Update_Services\">更新服务</a>。用换行分隔多个服务URL。
                                        </p>
                                        <br/>
                                        <textarea name="ping_sites" id="ping_sites" class="large-text code" rows="3" cols="40">${option8.optionValue}</textarea>
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
