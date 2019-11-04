<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<body>
	<h1>application内置对象</h1>
	<%
	application.setAttribute("city","北京");
	application.setAttribute("postcode","10000");
	application.setAttribute("emal","lisi@111.com");
	%>
	所在城市是：<%=application.getAttribute("city") %><br>
	application中的属性有:<%
	Enumeration attributes=application.getAttributeNames();
	while(attributes.hasMoreElements())
	{
		out.println(attributes.nextElement()+"&nbsp;%nbsp;");
	}
	%><br>
	JSP(SERVLET)引擎名及版本号:<%=application.getServerInfo() %><br>
	可真的秀啊
</body>


