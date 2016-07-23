<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<h1>用户管理 -- 编辑用户</h1>
		<div class="col-sm-4 col-sm-offset-4">
			<form action="${ctx}/user/updateSave" method="post">
				<input type="hidden" name="id" value="${user.id}">
				<div class="form-group">
					<label for="userLogin">账号</label> <input type="text"
						class="form-control" id="userLogin" placeholder="登录账号"
						name="userLogin" value="${user.userLogin}">
				</div>
				<div class="form-group">
					<label for="邮箱">邮箱</label> <input type="email" class="form-control"
						id="exampleInputEmail1" placeholder="邮箱" name="userEmail"
						value="${user.userEmail}">
				</div>
				<div class="form-group">
					<label for="password">密码</label> <input type="password"
						class="form-control" id="userPass" placeholder="密码"
						name="userPass" value="${user.userPass}">
				</div>
				<div class="form-group">
					<label for="repeatPassword">确认密码</label> <input type="password"
						class="form-control" id="repeatPassword" placeholder="确认密码"
						name="repeatPassword">
				</div>
				<div class="form-group">
					<label for="userNicename">昵称</label> <input type="text"
						class="form-control" id="userNicename" placeholder="昵称"
						name="userNicename" value="${user.userNicename}">
				</div>
				<a class="btn btn-default btn-lg" href="javascript:history.back();">
					返 回 </a>
				<button type="submit" class="btn btn-primary btn-lg">保 存</button>
			</form>
		</div>
	</div>
</body>
</html>
