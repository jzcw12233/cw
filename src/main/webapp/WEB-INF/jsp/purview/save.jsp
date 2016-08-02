<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<form action="${pageContext.request.contextPath}/purview/save" method="get"> 
	<input id="id" name="id" type="hidden" value="${purview.id }"/><br>
	        父ID:<input id="pid" name="pid" type="text" value="${purview.pid}"/><br>
	         路径:<input id="url" name="url" type="text" value="${purview.url}"/><br>
	权限名称:<input id="purviewname" name="purviewname" type="text" value="${purview.purviewname }"/><br>
	权限描述:<input id="purviewpicture" name="purviewpicture" type="text" value="${purview.purviewpicture }"/><br>
	
	<input id="" name="" type="submit" value="提交"/><br>
	
	
<!--  	用ajax取值 --> 
<%-- <script type="text/javascript"src="${pageContext.request.contextPath}/resource/jquery.min.js"></script> --%>
<!-- <script type="text/javascript"> -->
<%-- // $(function() {
// 	var id = $("#id").val();
// 	var h = '<option value = "">';
// 	$.ajax ({
// 		type :"post",
// 		url:"${pageContext.request.contextPath}/purview/findPurviewById",
// 		date :{id:id},
// 		dateType:"json",
// 		success:function(date){
// 			var u = data.purview;
// 			var rlist = data.rlist;
// 			$("#pid").val(p.pid);
// 			$("#url").val(p.url);
// 			$("#purviewname").val(p.purviewname);
// 			$("#purviewpicture").val(p.purviewpicture);
// 			$.each(rlist,function(i,v){
// 				h+='<option value=" '+v.id+' ">'+v.rolename;
// 			});
// 		$("#roleId").html(h);
// 		setTimeout(100);
// 		$("#roleId").val(u.roleId);
// 		}
// 	});
// }); --%>


<!-- </script> -->
</body>
</html>