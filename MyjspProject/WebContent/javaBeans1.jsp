<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.po.Users"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	Users user=new Users();
	user.setUsername("admin");
	user.setPassword("123456");
%>
	<h1>使用普通方式创建javabean的实例</h1>
	用户名:<%=user.getUsername() %><br>
	密码:<%=user.getPassword() %><br>

</body>
</html>