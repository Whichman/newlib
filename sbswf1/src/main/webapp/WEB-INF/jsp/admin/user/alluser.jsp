<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
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
        <input type="text" placeholder="Search for something"
         class="form-control" name="top-search" id="top-search">
       </div>
      </form>
     </div>

    </nav>
   </div>
   <!-- 正文 -->
   <div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
     <label>
      <h2>用户</h2>
     </label> <label><a href="${ctx}/admin/user/add"><button
        type="button" class="btn btn-outline btn-default">添加用户</button></a></label>

     <ol class="breadcrumb">
      <li><a href="index.html">全部<span class="count">（1）</span></a>
      </li>
      <li><a>管理员<span class="count">（1）</span></a></li>
     </ol>

     <div class="alignleft actions bulkactions" display="inline-block">

      <select name="action" id="bulk-action-selector-top">
       <option value="-1">批量操作</option>
       <option value="delete">删除</option>
      </select> <input type="submit" id="doaction" class="button action"
       value="应用"> <span> <select name="new_role"
       id="new_role">
        <option value="">将角色变更为…</option>

        <option value="subscriber">订阅者</option>
        <option value="contributor">投稿者</option>
        <option value="author">作者</option>
        <option value="editor">编辑</option>
        <option value="administrator">管理员</option>
      </select> <input type="submit" name="changeit" id="changeit" class="button"
       value="更改">
      </span>
     </div>
    </div>


    <div class="col-lg-2">
     <form action="${ctx}/admin/user" method="post">
      <div class="input-group">
       <input type="text" placeholder="Search"
        class="input-sm form-control" id="userLogin" name="userLogin"
        value="${userLogin}"> <span class="input-group-btn">
        <button type="submit" class="btn btn-sm btn-primary">搜索用户</button>
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
        <table class="footable table table-stripped toggle-arrow-tiny"
         data-page-size="10">
         <thead>

         </thead>
         <tbody>
          <tr class="gradeX">
           <td><input type="checkbox"> <a>用户名</a></td>
           <td><a>姓名</a></td>
           <td><a>电子邮件</a></td>
           <td class="center">角色</td>
           <td class="center">文章</td>
          </tr>
          <c:forEach items="${userList}" var="user">
           <tr class="gradeC">
            <td><input type="checkbox"><a
             href="${ctx}/admin/user/personal">${user.userLogin}</a>
             <div class="row-actions">
              <span class="edit"><a
               href="${ctx}/admin/user/update/${user.id}">${edit}</a></span> <span
               class="edit"><a
               href="${ctx}/admin/user/delete/${user.id}">${delet}</a> </span>
             </div></td>
            <td>${user.displayName}</td>
            <td>${user.userEmail}</td>
            <td class="center">5</td>
            <td class="center">${user.h}</td>
           </tr>
          </c:forEach>

          <tr class="gradeX">
           <td><input type="checkbox"><a>用户名</a></td>
           <td><a>姓名</a></td>
           <td><a>电子邮件</a></td>
           <td class="center">角色</td>
           <td class="center">文章</td>
          </tr>
          <tr class="gradeX">
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

 <!-- Page-Level Scripts -->
 <script>
		$(document).ready(function() {

			$('.footable').footable();
			$('.footable2').footable();

		});
	</script>

</body>

</html>
