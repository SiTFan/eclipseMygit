<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>用户资料</h1>
<% 	
	String username="";
	String password="";
	String email="";
	if(request.getParameter("username")!=null)
	{
		username=request.getParameter("username");
	}
	if(request.getParameter("password")!=null)
	{
		password=request.getParameter("password");
	}
	if(request.getParameter("email")!=null)
	{
		email=request.getParameter("email");
	}
%>	
	用户名：<%=username %><br>
	密码：<%=password %><br>
	电子邮件:<%=email %>
</body>
</html>