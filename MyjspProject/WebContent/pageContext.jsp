<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<body>
	<h1>pageContext内置对象</h1>
	用户名是：<%=pageContext.getSession().getAttribute("username") %>
	<%
	//跳转到注册界面
	//pageContext.forward("reg.jsp");
	pageContext.include("include.jsp");
	%>
</body>