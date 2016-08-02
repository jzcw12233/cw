<%@page import="org.cw.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${user.username}</h1>
<h2><a href="${pageContext.request.contextPath }/user/list">用户列表</a></h2>
<h2><a class="ss" href="#" id="rlist">角色列表</a></h2>
<h2><a href="${pageContext.request.contextPath }/purview/list" id="plist">权限列表</a></h2>
<%-- <h2><a href="${pageContext.request.contextPath }/rolePurview/list" id = "rplist">角色权限列表</a></h2> --%>

</body>
<script type="text/javascript" src="resource/jquery.min.js"></script>
<script type="text/javascript">
/* window.onload=function(){
	window.open('${pageContext.request.contextPath }/role/list');
	
} */

$(function(){
// 	$("#rlist").click(function(){
// 	$(".ss").click(function(){
// 		location='${pageContext.request.contextPath }/role/list';
// 	});
$("#rlist").one('click',function(){
// 	location='${pageContext.request.contextPath }/role/list';
	window.open('${pageContext.request.contextPath }/role/list');
	});


});


// function to_role_list(){
// 	window.open('${pageContext.request.contextPath }/role/list');
// }

</script>
</html>
