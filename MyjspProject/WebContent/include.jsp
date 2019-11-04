<%@ page language="java" import="java.util.*,java.io.*,java.text.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	Date date=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
	String s=sdf.format(date);
	out.println(s+"<br>");
%>