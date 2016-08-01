<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
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
		<h1>用户管理</h1>
		<c:if test="${!empty message}">
			<p class="alert alert-success" role="alert">${message}</p>
		</c:if>

		<div class="panel panel-success">
			<div class="panel-body">
				<form class="form-inline" role="search" action="${ctx}/option"
					method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="optionName"
							placeholder="Search" value="${optionName}">
					</div>
					<button type="submit" class="btn btn-default">
						<span class="glyphicon glyphicon-search"> </span> 查 询
					</button>
					<a class="btn btn-primary navbar-btn" href="${ctx}/option/add">
					<span class="glyphicon glyphicon-plus"> </span> 新 增 </a>
				</form>
			</div>
		</div>
		<table class="table table-hover table-condensed table-bordered">
			<tr>
				<th>id</th>
				<th>optionName</th>
				<th>optionValue</th>
				
			</tr>
			<c:forEach items="${optionList}" var="option">
				<tr>
					<td>${option.optionId}</td>
					<td>${option.optionName}</td>
					<td>${option.optionValue}</td>
					<td><a href="${ctx}/option/delete/${option.optionId}">删除</a> 
					<a href="${ctx}/option/update/${option.optionId}">编辑</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
