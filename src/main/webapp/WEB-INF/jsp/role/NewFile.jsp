<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
//复选框取值
$(function(){
//取本角色的所有的权限id在隐藏标签里
var purviews = $("#purviews").val();
//去前后空格
purviews = purviews.trim();
//去最后一个逗号
purviews = purviews.substring(0,purviews.length-1);
//把字符串用","切割成数组
var pid = purviews.split(",");
//遍历所以的复选框权限
$('[name="purview"]').each(function(n))
//取值
var id =$(this).val();
//放到是否包含的数组里面
var b = $.inArray(id.pids);
//判断-1不包含到数组中 
if(b!=-1){
//设置属性的函数值
$(this).attr("checked","checked");
}
});
</head>
<body>


</body>
</html>