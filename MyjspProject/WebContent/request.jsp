<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>request内置对象</h1>
<%request.setCharacterEncoding("utf-8"); %>
<%request.setAttribute("password", "123456");%>
<%--解决中文乱码问题--%>
用户名:<%=request.getParameter("username")%><br>
爱好:<%
	if(request.getParameter("favorite")!=null)
	{
		String[] favorites=request.getParameterValues("favorite");
		for(int i=0;i<favorites.length;i++)
		{
		out.println(favorites[i]);
		}
	}
		%><br>
		密码：<%=request.getAttribute("password") %>
</body>
</html>