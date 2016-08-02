<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/purview/delete" method="get"> 
	<input id="id" name="id" type="hidden" /><br>
	          父ID:<input id="pid" name="pid" type="text"/><br>
	          路径:<input id="url" name="url" type="text"/><br>
	权限名称:<input id="purviewname" name="purviewname" type="text"/><br>
	权限描述:<input id="purviewpicture" name="purviewpicture" type="text"/><br>
	<input id="" name="" type="submit" value="提交"/><br>
	</form>
</body>
</html>