<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
登录错误:ID号: ${user.userId},密码: ${user.userPassword},<font color='red'>${msg}</font><br>  
<a href="${pageContext.request.contextPath}/login/index.jsp">返回</a>
</body>
</html>