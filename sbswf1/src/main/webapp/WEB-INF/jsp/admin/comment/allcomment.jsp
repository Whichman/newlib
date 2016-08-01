<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>INSPINIA | FooTable</title>

<link href="${ctx}/inspinia/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/inspinia/font-awesome/css/font-awesome.css"
 rel="stylesheet">

<!-- FooTable -->
<link href="${ctx}/inspinia/css/plugins/footable/footable.core.css"
 rel="stylesheet">

<link href="${ctx}/inspinia/css/animate.css" rel="stylesheet">
<link href="${ctx}/inspinia/css/style.css" rel="stylesheet">

</head>

<body>

 <div id="wrapper">

  <nav class="navbar-default navbar-static-side" role="navigation">
   <div class="sidebar-collapse">
    <ul class="nav metismenu" id="side-menu">
     <li class="nav-header">
      <div class="dropdown profile-element">
       <span> <img alt="image" class="img-circle"
        src="${ctx}/inspinia/img/profile_small.jpg" />
       </span> <a data-toggle="dropdown" class="dropdown-toggle" href="#">
        <span class="clear"> <span class="block m-t-xs"> <strong
          class="font-bold">David Williams</strong>
        </span> <span class="text-muted text-xs block">Art Director <b
          class="caret"></b></span>
       </span>
       </a>
       <ul class="dropdown-menu animated fadeInRight m-t-xs">
        <li><a href="profile.html">Profile</a></li>
        <li><a href="contacts.html">Contacts</a></li>
        <li><a href="mailbox.html">Mailbox</a></li>
        <li class="divider"></li>
        <li><a href="login.html">Logout</a></li>
       </ul>
      </div>
      <div class="logo-element">IN+</div>
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
       
     <li class="active"><a href="${ctx}/admin/user"><i
       class="fa fa-edit"></i> <span class="nav-label">用户</span><span
       class="fa arrow"></span></a>
      <ul class="nav nav-second-level">
       <li><a href="${ctx}/admin/user">所有用户</a></li>
       <li class="active"><a href="${ctx}/admin/user/add">添加用户</a></li>
       <li><a href="${ctx}/admin/user/personal">我的个人资料</a></li>
      </ul></li>
    </ul>
   </div>
  </nav>

  <div id="page-wrapper" class="gray-bg">
   <div class="row border-bottom">
    <nav class="navbar navbar-static-top" role="navigation"
     style="margin-bottom: 0">
     <div class="navbar-header">
      <a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
       href="#"><i class="fa fa-bars"></i> </a>
      <form role="search" class="navbar-form-custom"
       action="search_results.html">
       <div class="form-group">
        <input type="text" placeholder="Search for something..."
         class="form-control" name="top-search" id="top-search">
       </div>
      </form>
     </div>
     <ul class="nav navbar-top-links navbar-right">
      <li><span class="m-r-sm text-muted welcome-message">Welcome
        to INSPINIA+ Admin Theme.</span></li>
      <li class="dropdown"><a class="dropdown-toggle count-info"
       data-toggle="dropdown" href="#"> <i class="fa fa-envelope"></i>
        <span class="label label-warning">16</span>
      </a>
       <ul class="dropdown-menu dropdown-messages">
        <li>
         <div class="dropdown-messages-box">
          <a href="profile.html" class="pull-left"> <img alt="image"
           class="img-circle" src="img/a7.jpg">
          </a>
          <div class="media-body">
           <small class="pull-right">46h ago</small> <strong>Mike
            Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
           <small class="text-muted">3 days ago at 7:58 pm -
            10.06.2014</small>
          </div>
         </div>
        </li>
        <li class="divider"></li>
        <li>
         <div class="dropdown-messages-box">
          <a href="profile.html" class="pull-left"> <img alt="image"
           class="img-circle" src="img/a4.jpg">
          </a>
          <div class="media-body ">
           <small class="pull-right text-navy">5h ago</small> <strong>Chris
            Johnatan Overtunk</strong> started following <strong>Monica
            Smith</strong>. <br> <small class="text-muted">Yesterday
            1:21 pm - 11.06.2014</small>
          </div>
         </div>
        </li>
        <li class="divider"></li>
        <li>
         <div class="dropdown-messages-box">
          <a href="profile.html" class="pull-left"> <img alt="image"
           class="img-circle" src="img/profile.jpg">
          </a>
          <div class="media-body ">
           <small class="pull-right">23h ago</small> <strong>Monica
            Smith</strong> love <strong>Kim Smith</strong>. <br> <small
            class="text-muted">2 days ago at 2:30 am -
            11.06.2014</small>
          </div>
         </div>
        </li>
        <li class="divider"></li>
        <li>
         <div class="text-center link-block">
          <a href="mailbox.html"> <i class="fa fa-envelope"></i> <strong>Read
            All Messages</strong>
          </a>
         </div>
        </li>
       </ul></li>
      <li class="dropdown"><a class="dropdown-toggle count-info"
       data-toggle="dropdown" href="#"> <i class="fa fa-bell"></i> <span
        class="label label-primary">8</span>
      </a>
       <ul class="dropdown-menu dropdown-alerts">
        <li><a href="mailbox.html">
          <div>
           <i class="fa fa-envelope fa-fw"></i> You have 16 messages <span
            class="pull-right text-muted small">4 minutes ago</span>
          </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="profile.html">
          <div>
           <i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
            class="pull-right text-muted small">12 minutes ago</span>
          </div>
        </a></li>
        <li class="divider"></li>
        <li><a href="grid_options.html">
          <div>
           <i class="fa fa-upload fa-fw"></i> Server Rebooted <span
            class="pull-right text-muted small">4 minutes ago</span>
          </div>
        </a></li>
        <li class="divider"></li>
        <li>
         <div class="text-center link-block">
          <a href="notifications.html"> <strong>See All
            Alerts</strong> <i class="fa fa-angle-right"></i>
          </a>
         </div>
        </li>
       </ul></li>


      <li><a href="login.html"> <i class="fa fa-sign-out"></i>
        Log out
      </a></li>
     </ul>

    </nav>
   </div>
   <!-- 正文 -->
   <div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
     <h2>评论</h2>
     </label>
     <ol class="breadcrumb">
      <li><a href="index.html">全部<span class="count">（3）</span></a>
      </li>
      <li><a>待审<span class="count">（0）</span></a></li>
      <li><a>已批准<span class="count">（3）</span></a></li>
      <li><a>垃圾<span class="count">（0）</span></a></li>
      <li><a>回收站<span class="count">（1）</span></a></li>
     </ol>

     <div class="alignleft actions bulkactions" display="inline-block">

      <select name="action" id="bulk-action-selector-top">
       <option value="-1">批量操作</option>
       <option value="delete">删除</option>
      </select> <input type="submit" id="doaction" class="button action"
       value="应用"> <span> <select name="new_role"
       id="new_role">
        <option value="">全部平论类型</option>

        <option value="subscriber">订阅者</option>
        <option value="contributor">投稿者</option>
        <option value="author">作者</option>
        <option value="editor">编辑</option>
        <option value="administrator">管理员</option>
      </select> <input type="submit" name="changeit" id="changeit" class="button"
       value="筛选">
      </span>
     </div>
    </div>


    <div class="col-lg-2">
     <form action="${ctx}/admin/comment" method="post">
      <div class="input-group">
       <input type="text" class="input-sm form-control" id="postTitle"
        name="postTitle" value="${postTitle}"> <span
        class="input-group-btn">
        <button type="submit" class="btn btn-sm btn-primary">搜索评论</button>
       </span>
      </div>
     </form>
    </div>
   </div>
   <div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
     <div class="col-lg-12">
      <div class="ibox float-e-margins">

       <div class="ibox-content">
        <table class="footable table table-stripped" data-page-size="10"
         data-filter=#filter>
         <thead>

         </thead>
         <tbody>
          <tr class="gradeX">
           <td><input type="checkbox"> <a>作者</a></td>
           <td><a>评论</a></td>
           <td><a>回复至</a></td>
           <td class="center">提交于</td>
          </tr>

          <c:forEach items="${postList}" var="post">
           <tr class="gradeC">
            <td><input type="checkbox"><a>${post.commentAuthor}</a></td>
            <td>${post.commentContent}
            <div class="row-actions">
              <span class="edit"><a
               href="${ctx}/admin/comment/reply/${post.commentId}">${reply}</a></span>
             </div>
            </td>
            <td>${post.postTitle}
            <div>
            <span class="edit"><a
               href="${ctx}/admin/comment/reply/${post.id}">${adreview}</a></span>
            </div>
            </td>
            <td class="center"><fmt:formatDate
              pattern="yyyy-MM-dd HH-mm-ss" value="${post.commentDate}" /></td>
           </tr>
          </c:forEach>

          <tr class="gradeX">
           <td><input type="checkbox"><a>作者</a></td>
           <td><a>评论</a></td>
           <td><a>回复至</a></td>
           <td class="center">提交于</td>

          </tr>

         </tbody>

         <tfoot>
          <tr>
           <td colspan="5">
            <ul class="pagination pull-right"></ul>
           </td>
          </tr>
         </tfoot>
        </table>
        <div class="row">
         <div class="col-lg-10">
          <div class="alignleft actions bulkactions"
           display="inline-block">
           <select name="action">
            <option value="-1">批量操作</option>
            <option value="delete">删除</option>
           </select> <input type="submit" class="button action" value="应用">

           <span> <select name="new_role">
             <option value="">将角色变更为…</option>

             <option value="subscriber">订阅者</option>
             <option value="contributor">投稿者</option>
             <option value="author">作者</option>
             <option value="editor">编辑</option>
             <option value="administrator">管理员</option>
           </select> <input type="submit" name="changeit" class="button"
            value="更改">
           </span>
          </div>

          <div class="col-lg-2"></div>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
   <div class="footer">
    <div class="pull-right">
     10GB of <strong>250GB</strong> Free.
    </div>
    <div>
     <strong>Copyright</strong> Example Company &copy; 2014-2015
    </div>
   </div>

  </div>
 </div>



 <!-- Mainly scripts -->
 <script src="${ctx}/inspinia/js/jquery-2.1.1.js"></script>
 <script src="${ctx}/inspinia/js/bootstrap.min.js"></script>
 <script src="${ctx}/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
 <script
  src="${ctx}/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

 <!-- FooTable -->
 <script src="${ctx}/inspinia/js/plugins/footable/footable.all.min.js"></script>

 <!-- Custom and plugin javascript -->
 <script src="${ctx}/inspinia/js/inspinia.js"></script>
 <script src="${ctx}/inspinia/js/plugins/pace/pace.min.js"></script>
 <script type="text/javascript"
  src="${ctx}/inspinia/js/jquery.timeago.js"></script>
 <!-- Page-Level Scripts -->
 <script>
		$(document).ready(function() {

			$('.footable').footable();
			$('.footable2').footable();

		});
	</script>

</body>

</html>
