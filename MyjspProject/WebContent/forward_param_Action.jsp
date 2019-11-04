<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>forward动作</title>
</head>
<body>
	<h1>include动作</h1>
	<jsp:forward page="user.jsp">
		<jsp:param value="1245136524@qq.com" name="email"/>
		<jsp:param value="kkkkkkkkkkka" name="password"/>
	</jsp:forward>
</body>
</html>