<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<head>
  <base href="<%=basePath%>">
  
  <title>My JSP 'Login.jsp' starting page</title>
  
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">	
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">
  <!--
  <link rel="stylesheet" type="text/css" href="styles.css">
  -->

  </head>
  
  <body>
    <form action="login/login" method="post">
      <label>用户名：</label><input type="text" name="userName"/><br/>
      <label>密码：</label><input type="password" name="password"/><br/>
      <input type="submit" value="login"/><input type="reset" value="reset"/>
    </form>
    ${error}
  </body>
</html>