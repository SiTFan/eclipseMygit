<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="users" class="com.po.Users" scope="page"/>
	<h1>使用useBean创建javabean的实例</h1>
	用户名:<%=users.getUsername() %><br>
	密码:<%=users.getPassword() %><br>

</body>
</html>