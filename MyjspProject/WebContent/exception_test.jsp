<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8" errorPage="exception.jsp"
    pageEncoding="utf-8"%>
<body>
	<h1>测试异常的界面</h1>
	<hr>
	<%
	System.out.println(100/0);//抛出运行时异常，算数异常
	%>
</body>