<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/role/delete" method="get"> 
	<input id="id" name="id" type="hidden" /><br>
	<input id="id" name="id" type="hidden" value="${role.id }"/><br>
	角色姓名:<input id="rolename" name="rolename" type="text" value="${role.rolename}"/><br>
	角色描述:<input id="roledesc" name="roledesc" type="text" value="${role.roledesc }"/><br>
	<input id="" name="" type="submit" value="提交"/><br>
	</form>
</body>
</html>