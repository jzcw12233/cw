<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/uaer/delete" method="get"> 
	<input id="id" name="id" type="hidden" /><br>
	角色ID:<input id="role_id" name="role_id" type="hidden" value="${user.role_id }"/><br>
	性别:<input id="sex" name="sex" type="hidden" value="${user.sex }"/><br>
	路径:<input id="path" name="path" type="hidden" value="${user.path }"/><br>
	姓名:<input id="username" name="username" type="text"/><br>
	密码:<input id="password" name="password" type="text"/><br>
	电话:<input id="phone" name="phone" type="text"/><br>
	<input id="" name="" type="submit" value="提交"/><br>
	</form>
</body>
</html>