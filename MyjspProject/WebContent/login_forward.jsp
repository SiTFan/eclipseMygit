<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>系统登录</h1>
	<hr>
	<form name="loginForm" action="forward_param_Action.jsp" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input type="text" name="username" value=""/></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="password" value=""/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="登录"/></td>
			</tr>
		</table>
	</form>
</body>
</html>