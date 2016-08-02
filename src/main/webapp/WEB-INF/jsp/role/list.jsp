<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@include file="../common/head.jsp" %>
</head>
<body>
<div class="container">
      	<div class="panel panel-default">
      	<div class="panel-heading text-center">
      	<a class="btn btn-info" href="${pageContext.request.contextPath }/role/toSave" style="float: right;">新增</a>
      		<h2>角色列表</h2>
      		
      	</div>
      	<div class="panel-body">
      		<table class="table table-hover">
      		<thead>
      		<tr>
      			<th>ID</th>
      			<th>角色名</th>
      			<th>创建时间</th>
      			<th>角色描述</th>
      			<th>删除/查看详情</th>
      		</tr>
      		</thead>
      		<tbody>
      		<c:forEach var ="r" items="${list}">
      		<tr>
      		<td>${r.id}</td>
      		<td>${r.rolename}</td>
      		<td><fmt:formatDate value="${r.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
      		<td>${r.roledesc}</td>
      		<td>
      		
      		<a class="btn btn-info" href="${pageContext.request.contextPath }/role/toSave?id=${r.id}" title="修改">link</a>
      		/<a class="btn btn-info" href="${pageContext.request.contextPath }/role/delete?id=${r.id}" title="删除">del</a>
      		
      		</td>
      		</tr>
      		</c:forEach>
      		</tbody>
      		</table>
      	</div>
      	</div>
      </div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/resource/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${pageContext.request.contextPath}/resource/bootstrap.min.js"></script>
</body>
</html>