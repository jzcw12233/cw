<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/tag.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery.min.js"></script>
<script type="text/javascript">
// 复选框取值
$(function(){
	//取本角色的所以的权限id在隐藏标签里
	var purviews=$("#purviews").val();
	//去前后空格
	purviews=purviews.trim();
	//去最后一个逗号
	purviews=purviews.substring(0,purviews.length-1);
	//把字符串用","切割成数组
	var pids=purviews.split(",");
	//遍历所以的 复选框权限
	$('[name="purview"]').each(function(n){
		//取值
		var id=$(this).val();
		//放到是否包含的数组里面
		var b=$.inArray(id,pids);
		//判断-1不包含到数组中
		if(b!=-1){
			////设置属性的函数值  （为所有匹配的元素设置一个计算的属性值。不提供值，而是提供一个函数，由这个函数计算的值作为属性值
			$(this).attr("checked","checked");
		}
	});
});

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/role/save"
		method="get">
		<input id="id" name="id" type="hidden" value="${role.id }" /><br>
		角色姓名:<input id="rolename" name="rolename" type="text"
			value="${role.rolename}" /><br> 角色描述:<input id="roledesc"
			name="roledesc" type="text" value="${role.roledesc }" /><br>
		<!-- 	遍历 -->
		<c:forEach var="p" items="${purviews}">
		 ${p.purviewname}<input type="checkbox" name="purview" value="${p.id}">
		</c:forEach>
		<input id="" name="" type="submit" value="提交" /><br>
	</form>
<input type="hidden" id="purviews" name="purviews" value="<c:forEach var="rp" items="${role.purview}">${rp},</c:forEach>">

</body>
</html>