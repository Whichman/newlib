<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="option1" value="${closeCommentsDaysOld}" />
<c:set var="option2" value="${threadCommentsDepth}" />
<c:set var="option3" value="${commentsPerPage}" />
<c:set var="option4" value="${defaultCommentsPage}" />
<c:set var="option5" value="${commentOrder}" />
<c:set var="option6" value="${commentMaxLinks}" />
<c:set var="option7" value="${moderationKeys}" />
<c:set var="option8" value="${blacklistKeys}" />
<!DOCTYPE htoption7ml>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>w3c | 设置-讨论</title>
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
                        <li><a href="${ctx}/admin/read">阅读</a></li>
                        <li class="active"><a href="${ctx}/admin/discuss">讨论</a></li>
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
                            <h5>讨论设置 </small></h5>
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
                            <form method="post" class="form-horizontal" action="${ctx}/admin/detial">
								<div class="form-group">
									<label class="col-sm-2 control-label">默认文章设置</label>
									<div class="col-sm-10">
										<div>
											<label for="default_pingback_flag">
                                                <input type="checkbox" name='default_pingback_flag'id="default_pingback_flag"   value="1" checked="" >
                                                <span>尝试通知文章中连接的博客</span>
                                            </label>
										</div>
										<div>
											<label for="default_ping_status">
                                                <input type="checkbox" name='default_ping_status' id="default_ping_status" value="open"  >
                                                <span>允许其他博客发送链接通知（pingback和trackback）到新文章</span>
                                            </label>
										</div>
										<div>
											<label for="default_comment_status">
                                                <input type="checkbox" name='default_comment_status'id="default_comment_status" value="open"  >
                                                <span>允许他人在新文章上发表评论</span>
                                            </label>
										</div>
										<p class="description">(这些设置可被具体的文章设置所覆盖。)</p>
									</div>
								</div>
								<div class="hr-line-dashed"></div>
									<div class="form-group">
										<label class="col-sm-2 control-label">其他评论设置</label>
										<div class="col-sm-10">
											<div>
												<label for="require_name_email">
                                                    <input type="checkbox" name='require_name_email'  id="require_name_email"value="1" checked="" >
                                                    <span>评论作者必须填入姓名和电子邮件地址 </span> </label>
											</div>
											<div>
												<label for="comment_registration">
                                                    <input type="checkbox" name='comment_registration' value="1" id="comment_registration" >
                                                    <span>用户必须注册并登陆才可以发表评论</span>
                                                </label>
											</div>
											<div>
												<label >
													<input type="checkbox" name='close_comments_for_old_posts' value="1" id="close_comments_for_old_posts" >
                                                    <span>自动关闭发布</span>
													<input type="number" name="close_comments_days_old" id="close_comments_days_old" step="1" min="1" max="200"  value="${option1.optionValue}" class="small-text" />
                                                    <span>天后的文章上的评论功能</span>
												</label>
											</div>
											<div>
												<label >
													<input type="checkbox" name='thread_comments' value="1" id="thread_comments" checked="checked">
													<span>启用评论嵌套，最多嵌套</span>
													<select id="thread_comments_depth" name="thread_comments_depth">
														<option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
														<option value="${option2.optionValue}"selected="selected" >5</option>
                                                        <option value="6">6</option>
														<option value="8">8</option>
														<option value="10">10</option>
														<option value="15">15</option>
													</select>
                                                    <span>层</span>
												</label>
											</div>
											<div>
												<label>
													<input type="checkbox" name='page_comments' value="1" id="page_comments" >
                                                    <span>分页显示评论，每页显示</span>
													<input type="number" name="comments_per_page"  step="1" min="1" max="50" id="comments_per_page" value="${option3.optionValue}" class="small-text" />
                                                    <span>条评论，默认显示</span>
													<select id="default_comments_page" name="default_comments_page">
														<option value="newest">最新</option>
														<option value="${option4.optionValue}"selected="selected" >浏览人数最多</option>
														<option value="oldest">最后</option>
													</select>一页
												</label>
											</div>
											<div >
												<label for="comment_order">
                                                    <span>在每个页面顶部显示</span>
													<select id="comment_order" name="comment_order">
														<option value="${option5.optionValue}">当前</option>
														<option value="desc">新的</option>
														<option value="asc">旧的</option>
													</select>评论
												</label>
											</div>
										</div>
									</div>
									<div class="hr-line-dashed"></div>
									<div class="form-group">
											<label class="col-sm-2 control-label">发送电子邮件通知我</label>
											<div class="col-sm-10">
												<div>
													<label for="comments_notify">
                                                        <input type="checkbox" name='comments_notify' id="comments_notify"  value="1" checked="checked"  >
                                                       <span>有人发表评论时</span>
                                                    </label>
												</div>
												<div>
													<label for="moderation_notify">
                                                        <input type="checkbox" name='moderation_notify' value="1" id="moderation_notify" >
                                                        <span>有评论等待审核时</span>
                                                    </label>
												</div>
											</div>
									</div>
									<div class="hr-line-dashed"></div>
									<div class="form-group">
										<label class="col-sm-2 control-label">在评论显示之前</label>
										<div class="col-sm-10">
											<div>
												<label for="comment_moderation">
                                                    <input type="checkbox" name='comment_moderation' id="comment_moderation" value="1"  checked="checked">
                                                    评论必须经人工批准
                                                </label>
											</div>
											<div>
												<label for="comment_whitelist" >
                                                    <input type="checkbox" name='comment_whitelist' value="1" id="comment_whitelist" >
                                                    评论者先前有评论通过了审核
                                                </label>
											</div>
											<div>
												<label for="comment_noaudit">
                                                    <input type="checkbox" name='comment_noaudit' value="1" id="comment_noaudit" >
                                                    无需人工批准
                                                </label>
											</div>
										</div>
									</div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">评论审核</label>
									<div class="col-sm-10">
										<span>当某评论包含超过</span>
										<input name="comment_max_links" type="number" step="1" min="1" max="25" id="comment_max_links" value="${option6.optionValue}" class="small-text" />
										<span>个超链接时，将其放入等待审核队列。（垃圾评论通常含有许多超链接。）</span>
										<p>当评论的内容、姓名、URL、电子邮箱或IP中包含以下文字，它将被设定为<a href ="#">待审核</a>。每行输入一个词或IP地址。它也会在单词内部进行对比，所以"press"将会匹配"WordPress"。</p>
										<textarea class="large-text code" name="moderation_keys" id="moderation_keys" rows="5" cols="70" >${option7.optionValue}</textarea>
                               		  </div>
									</div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">评论黑名单</label>
                                    <div class="col-sm-10">
										<p>当评论的内容、姓名、URL、电子邮箱或IP中包含以下文字，它将被移入回收站。每行输入一个词或IP地址。它也会在单词内部进行对比，所以"press"将会匹配"WordPress"。</p>
										<textarea  class="large-text code" name="blacklist_keys" id="blacklist_keys" rows="5" cols="70" >${option8.optionValue}</textarea>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">头像</label>
                                    <div class="col-sm-10">
										<p>头像是您在各个博客都通用的图像。在每个启用了头像功能的站点上，它将显示在您的名字旁边。在这里您可以启用您站点上的读者评论头像显示功能。</p>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-lg-2 control-label">头像显示</label>
                                    <div class="col-lg-10">
										<label class="help-block m-b-none" for="show_avatars">
											<input type="checkbox" name="show_avatars" id="show_avatars" checked="checked" value="1" />
											显示头像
										</label>
									</div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group">
									<label class="col-sm-2 control-label">最高等级 </label>
                                    <div class="col-sm-10">                                      
                                        <div>
											<label>
												<input type="radio" name='avatar_rating' checked="checked" value="G"   >
                                                <span>G--适合任何年龄的访客查看</span>
											</label>
										</div>
                                        <div>
											<label>
												<input type="radio" name='avatar_rating' value="PG"  >
                                                <span>PG--可能有争议的头像，只适合13岁以上读者查看</span>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='avatar_rating' value="R" id="highest_level3">
                                                <span>R--成人级，只适合17岁以上成人查看</span>
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='avatar_rating' value="X" id="highest_level4" >
                                                <span>X--最高等级，不适合大多数人查看</span>
											</label>
										</div>

                                    </div>
                                </div>
								<div class="hr-line-dashed"></div>
								<div class="form-group">
									<label class="col-sm-2 control-label">默认头像 </label>
									<div class="col-sm-10">
										<span class="help-block m-b-none">如果用户没有自定义头像，您可以显示一个通用标志或用他们的电子邮件地址生成一个。</span>
										<div>
											<label>
												<input type="radio" name='default_avatar' checked="checked" value="mystery" id="avatar_mystery" >
												<img  src="${ctx}/static/backstage/img/a5.jpg" height='32' width='32' />神秘人士
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='default_avatar' value="blank" id="avatar_blank" >
												<img  src="${ctx}/static/backstage/img/a4.jpg" height='32' width='32' />空白
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='default_avatar' value="gravatar_default" id="avatar_gravatar_default">
												<img  src="${ctx}/static/backstage/img/a3.jpg" height='32' width='32' />Gravatar标志
											</label>
										</div>
										<div>
											<label> <input type="radio" name='default_avatar' value="abstract" id="avatar_abstract" >
											<img  src="${ctx}/static/backstage/img/a2.jpg" height='32' width='32' />抽象图像（自动生成）
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='default_avatar' value="wavatar" id="avatar_wavatar" >
												<img  src="${ctx}/static/backstage/img/a1.jpg" height='32' width='32' />Wavatar（自动生成）
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='default_avatar' value="monsterid" id="avatar_monsterid">
												<img  src="${ctx}/static/backstage/img/p1.jpg" height='32' width='32' />小怪物（自动生成）
											</label>
										</div>
										<div>
											<label>
												<input type="radio" name='default_avatar' value="retro" id="avatar_retro" >
												<img  src="${ctx}/static/backstage/img/p2.jpg" height='32' width='32' />复古（自动生成）
											</label>
										</div>
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
