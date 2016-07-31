<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--引入的 样式-->
    <%@include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>角色 权限列表页</title>
    <!--引入的样式-->
   <%@include file="../common/head.jsp" %>
   </head>
   <body>
      <div class="container">
      	<div class="panel panel-default">
      	<div class="panel-heading text-center">
      	<a class="btn btn-info" href="${pageContext.request.contextPath }/user/toSave" style="float: right;">新增</a>
      		<h2>角色 权限列表</h2>
      	</div>
      	<div class="panel-body">
      		<table class="table table-hover">
      		<thead>
      		<tr>
      			<th>角色ID</th>
      			<th>权限ID</th>
      			<th>删除/查看详情</th>
      		</tr>
      		</thead>
      		<tbody>
      		<c:forEach var ="rp" items="${list}">
      		<tr>
      		<td>${rp.rid}</td>
      		<td>${rp.pid}</td>
      		<td>
      		
      		<a class="btn btn-info" href="${pageContext.request.contextPath }/user/toSave?id=${u.id}" title="修改">link</a>
      		/<a class="btn btn-info" href="${pageContext.request.contextPath }/user/delete?id=${u.id}" title="删除">del</a>
      		
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