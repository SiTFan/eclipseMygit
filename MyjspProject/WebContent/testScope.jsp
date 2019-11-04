<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.po.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JavaBean的四个作用域范围</h1>
	<hr>
	<jsp:useBean id="users" class="com.po.Users" scope="page"/>
	用户名：<jsp:getProperty property="username" name="users"/><br>
	密码：<jsp:getProperty property="password" name="users"/><br>
	<%--使用内置对象获取用户名和密码 --%>
	<hr>
	<%-- 
	用户名：<%=((Users)application.getAttribute("users")).getUsername()%><br>
	密码：<%=((Users)application.getAttribute("users")).getPassword() %>
	--%>
	<%-- 
	用户名：<%=((Users)session.getAttribute("users")).getUsername()%><br>
	密码：<%=((Users)session.getAttribute("users")).getPassword() %>
	--%>
	<%-- 
	用户名：<%=((Users)request.getAttribute("users")).getUsername()%><br>
	密码：<%=((Users)request.getAttribute("users")).getPassword() %>
	--%>
	<%
		String username="";
		String password="";
		if(pageContext.getAttribute("users")!=null){
			username=((Users)pageContext.getAttribute("users")).getUsername();
			password=((Users)pageContext.getAttribute("users")).getPassword();
		}
	%>
	用户名：<%=username%><br>
	密码：<%=password %>
</body>
</html>