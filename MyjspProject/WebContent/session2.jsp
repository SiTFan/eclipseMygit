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
	//SimpleDateFormat sdf=new SimpleDateFormat("yyyy年mm月dd日 HH:mm:ss"); 
	//Date d=new Date(session.getCreationTime());
	//session.setAttribute("username","admin");
	%>
	Session的ID编号：<%=session.getId()%><br>
	Session获取用户名:<%=session.getAttribute("username") %><br>
	Session中保存的属性：
	<%
	String[] value=session.getValueNames();
	for(int i=0;i<value.length;i++)
	{
		out.println(value[i]);
	}
	%><br>
</body>
</html>