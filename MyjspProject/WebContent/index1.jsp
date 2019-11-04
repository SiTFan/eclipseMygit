<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>九九乘法表</title>
</head>
<body>
	<%! 
	//表达式调用
	String printMultitable1(){
		String s="";
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
				s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
			}
			s+="<br>";
		}
		return s;
	}
	//JSP内置out对象，使用脚本方式调用
	void printMultitable2(JspWriter out)throws Exception	
	{
		for(int i=1;i<=9;i++){
			for(int j=1;j<=i;j++){
				out.println(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
			}
			out.println("<br>");
		}
		
	}
	%>
	<%=printMultitable1()%>
	<%out.flush(); %>
	<%out.clearBuffer(); %>
	缓冲区大小：<%=out.getBufferSize()%><br>
	缓冲区剩余大小:<%=out.getRemaining() %><br>
	是否自动清空缓冲区:<%=out.isAutoFlush() %><br>
	<%printMultitable2(out);%>
</body>
</html>