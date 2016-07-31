<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="../common/tag.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
	<form action="${pageContext.request.contextPath}/user/save" method="post"> 
	<input id="id" name="id" type="hidden" value="${param.id}"/><br>
	姓名:<input id="username" name="username" type="text" value=""/><br>
	性别:<select>
	     <option value="1" >男
	     <option value="0" >女
	     </select><br>
	密码:<input id="password" name="password" type="text" value=""/><br>
	角色:<select id="roleId" name="roleId"  >
	
	<%-- <option value="">
	<c:forEach var ="r" items="${rlist}">
	<c:if test="${r.id==user.roleId}">
	<option value="${r.id}"  selected="selected"> ${r.rolename}
	</c:if>
	<c:if test="${r.id!=user.roleId}">
	<option value="${r.id}" > ${r.rolename}
	</c:if>
	</c:forEach> --%>
	</select><br>
<%-- 	<input id="roleId" name="roleId" type="text" value="${user.roleId }"/><br> --%>
	路径:<input id="path" name="path" type="text" value=""/><br>
	电话:<input id="phone" name="phone" type="text" value=""/><br>
	<input id="" name="" type="submit" value="提交"/><br>
	
	</form>
<!-- 用ajax取值	 -->
<!-- 	引入javascript -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/jquery.min.js"></script>
<!-- 并且用javascript标签包起来  -->
<script type="text/javascript">
$(function(){
	var id=$("#id").val();
	var h='<option value="">';
	  $.ajax( {  
	        type : "post",  
	        url : "${pageContext.request.contextPath}/user/findUserById",
	        data:{id:id},
	        dataType:"json",  
	        success : function(data) {  
	        	var u=data.user;
	        	var rlist=data.rlist;
	        	//遍历
	        	$.each(rlist,function(i,v){
	        		//拼接
	        		h+='<option value="'+v.id+'" >'+v.rolename;
	        	});
	        	
	        	$("#roleId").html(h);
// 	        	取值放放入date
				if(u){
	        	$("#username").val(u.username);
	        	$("#sex").val(u.sex);
	        	$("#path").val(u.path);
	        	$("#phone").val(u.phone);
	        	$("#password").val(u.password);
// 	        	占停time
	        	setTimeout(100);
				$("#roleId").val(u.roleId);
				}
	        	
	        }  
	    });  
	
});
</script>
</body>
</html>