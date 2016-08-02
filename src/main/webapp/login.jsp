<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<form action="${pageContext.request.contextPath}/user/login" method="post"> 
	用户名:<input id="username" name="username" type="text" value=""/><br>
	密码:<input id="password" name="password" type="password" value=""/><br>
	<input id="" name="" type="submit" value="提交"/><br>
	
	</form>
<!-- 用ajax取值	 -->
<!-- 	引入javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery.min.js"></script>
<!-- 并且用javascript标签包起来  -->

</body>
</html>