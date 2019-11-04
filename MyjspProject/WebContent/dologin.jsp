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
	<h1>setProperty元素</h1>
	<hr>
	<!-- 根据表单自动匹配所有的属性 -->
	<%-- 
	<jsp:setProperty property="*" name="users"/>
	--%>
	<!-- 根据表单自动匹配部分的属性 -->
	<%-- 
	<jsp:setProperty property="username" name="users"/>
	--%>
	<!-- 与表单无关，手工辅助给属性 -->
	<%-- 
	<jsp:setProperty property="username" name="users" value="SiTFan"/>
	<jsp:setProperty property="password" name="users" value="123456"/>
	--%>
	<!-- 通过URL传参数给属性赋值 -->
	<jsp:setProperty property="username" name="users" param="mypass"/>
	<jsp:setProperty property="password" name="users" />
	<!-- 使用传统的表达式方式获取用户名和密码 -->
	<%-- 
	用户名:<%=users.getUsername() %><br>
	密码:<%=users.getPassword() %><br>
	--%>
	<!-- 使用getProperty方式获取用户名和密码 -->
	用户名：<jsp:getProperty property="username" name="users"/><br>
	密码：<jsp:getProperty property="password" name="users"/><br>
	<br>
	<br>
	<a href="testScope.jsp">测试javabean的四个作用域范围</a>
	<%
		request.getRequestDispatcher("testScope.jsp").forward(request, response);
	%>
</body>
</html>