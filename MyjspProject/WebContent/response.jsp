<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 	
	response.setContentType("text/html;charset=utf-8");
	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	//out.flush();
	PrintWriter outer=response.getWriter();//获得输出流对象
	outer.println("大家好，我是response对象生成的输出流outer对象");
	//response.sendRedirect("reg.jsp");
	//response.sendRedirect("request.jsp");//请求重定向
	request.getRequestDispatcher("request.jsp").forward(request,response);
%>
