<%@ page language="java" import="java.text.*,java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>session内置对象</title>
</head>
<body>
	<h1>session内置对象</h1>
	<hr>
	<%
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy年mm月dd日 HH:mm:ss"); 
	Date d=new Date(session.getCreationTime());
	session.setAttribute("username","admin");
	session.setAttribute("password", "123456");
	session.setAttribute("age","12");
	//设置当前session最大生命周期单位是秒
	//session.setMaxInactiveInterval(5);
	%>
	Session创建时间:<%=sdf.format(d) %><br>
	Session的ID编号：<%=session.getId()%><br>
	Session获取用户名:<%=session.getAttribute("username") %><br>
	
	<a href="session2.jsp" target="_blank">跳转到session2.jsp页面</a>
</body>
</html>