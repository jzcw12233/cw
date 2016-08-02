<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--引入的 样式-->
<%@include file="../common/tag.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>用户列表页</title>
<!--引入的样式-->
<%@include file="../common/head.jsp"%>
</head>
<body>
<form action="${pageContext.request.contextPath}/login/index" method="post"> 
	<h2>登录页面</h2>
						ID号: <input type="text" name="userId" id="userId"><br>
						密码: <input type="password" name="userPassword" id="userPassword"><br>
						<input type="submit" value="Login">
					</form>
<!-- 					 <br> -->
<!-- 					<form -->
<%-- 						action="${pageContext.request.contextPath}/user.do?method=add2" --%>
<!-- 						method="post"> -->
<!-- 						ID号: <input type="text" name="userId" id="userId"><br> -->
<!-- 						密码: <input type="password" name="userPassword" id="userPassword"><br> -->
<!-- 						<input type="submit" value="Login2"> -->
<!-- 					</form> -->
<!-- 					<br> -->
<!-- 					<form -->
<%-- 						action="${pageContext.request.contextPath}/user.do?method=add3" --%>
<!-- 						method="post"> -->
<!-- 						ID号: <input type="text" name="userId" id="userId"><br> -->
<!-- 						密码: <input type="password" name="userPassword" id="userPassword"><br> -->
<!-- 						<input type="submit" value="Login3"> -->
					
					</form>  
</body>
</html>