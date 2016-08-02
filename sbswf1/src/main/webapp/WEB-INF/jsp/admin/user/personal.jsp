<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Basic Form</title>

    <link href="${ctx}/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/inspinia/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="${ctx}/inspinia/css/animate.css" rel="stylesheet">
    <link href="${ctx}/inspinia/css/style.css" rel="stylesheet">

    <link href="${ctx}/inspinia/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${ctx}/inspinia/img/profile_small.jpg" />
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
                <!-- 用户菜单-->
             <li><a href="${ctx}/admin/comment"><i
              class="fa fa-pie-chart"></i> <span class="nav-label">评论</span><span
              class="fa arrow"></span></a>
              <ul class="nav nav-second-level">
              <li><a href="${ctx}/admin/comment">所有评论</a></li>
              <li class="active"><a href="${ctx}/admin/comment/reply">回复评论</a></li>
              <li><a href="${ctx}/admin/comment/adreview">添加评论</a></li>
         </ul>
       </li>
       
     <li class="active">
                    <a href="${ctx}/admin/user"><i class="fa fa-edit"></i> <span class="nav-label">用户</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a href="${ctx}/admin/user">所有用户</a></li>
                        <li class="active"><a href="${ctx}/admin/user/add">添加用户</a></li>
                        <li><a href="${ctx}/admin/user/personal">我的个人资料</a></li>
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
            <!-- 页面正文-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>个人资料</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">个人设置</a>
                        </li>

                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>

            <!-- 正文第二 -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>All form elements <small>With custom checbox .</small></h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <form action="${ctx}/admin/user/updateSave" method="post" class="form-horizontal">
                        <input type="hidden" name="id" value="${user.id}">
                        <div class="ibox-content">
                           <div  class="form-group" class="checkbox m-r-xs"> <label class="col-sm-2 control-label">可视化编辑器</label>
                                    <div class="col-sm-10">
                                        <input type="checkbox" >
                                        <label for="checkbox1">
                                                                                                                        撰写文章时不使用可视化编辑器
                                        </label>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div  class="form-group" class="checkbox m-r-xs"> <label class="col-sm-2 control-label">工具栏</label>
                                    <div class="col-sm-10">
                                        <input type="checkbox" >
                                        <label for="checkbox1">
                                                                                                                            在浏览站点时显示工具栏
                                        </label>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>

                                <div class="form-group"><label class="col-sm-2 control-label">用户名</label>

                                    <div class="col-sm-6"><input type="text" class="form-control">
                                        <span>用户名不可更改。</span>
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>


                                <div class="form-group"><label class="col-sm-2 control-label">displayName</label>
                                    <div class="col-sm-6"><input type="text" id="displayName" class="form-control" name="displayName" value="${user.displayName}">
                                    </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">昵称（必填）</label>

                                    <div class="col-sm-6"><input type="text"  class="form-control"></div>
                                </div>

                                <div class="form-group"><label class="col-sm-2 control-label">公开显示为</label>

                                    <div class="col-sm-2"><select name="display_name" id="display_name" class="form-control">
                                        <option selected="selected">abc</option>
                                    </select></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">联系信息</label>

                                    <div class="col-sm-10"><input type="text"  class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">电子邮件（必填）</label>

                                    <div class="col-sm-6"><input type="email" class="form-control" id="userEmail" name="userEmail" value="${user.userEmail}"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">站点</label>

                                    <div class="col-sm-10"><input type="text"  class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">关于您自己</label>

                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">个人说明</label>

                                    <div class="col-sm-10"><textarea name="description" id="description" rows="5" cols="30" class="form-control"></textarea>
                                        <span class="help-block m-b-none">分享关于您的一些信息。可能会被公开。</span>
                                    </div>
                                </div>

                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">账户管理</label>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">新密码</label>

                                    <div class="col-sm-4"><input type="password" name="userPass" id="userPass" value="${user.userPass}" class="form-control"></div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div  class="form-group" class="checkbox m-r-xs"> <label class="col-sm-2 control-label">会话</label>

                                    <div class="col-sm-10">
                                        <button type="button" class="button button-secondary" id="destroy-sessions">登出其他设备</button>
                                    </div>
                                </div>

                                <div  class="form-group"  >
                                    <label class="col-sm-2 control-label">
                                      <button type="submit" class="btn btn-primary btn-lg">更新个人资料</button>
                                    </label>
                                 </div>
                                   </div>
                                </form>
                            </div>
                    </div>
                </div>
            </div>
        </div>



    <!-- Mainly scripts -->
    <script src="${ctx}/inspinia/js/jquery-2.1.1.js"></script>
    <script src="${ctx}/inspinia/js/bootstrap.min.js"></script>
    <script src="${ctx}/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${ctx}/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctx}/inspinia/js/inspinia.js"></script>
    <script src="${ctx}/inspinia/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="${ctx}/inspinia/js/plugins/iCheck/icheck.min.js"></script>
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
