<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录界面</title>
</head>
<style type="text/css">
	table{
		width:300px;
		margin:50px auto;
	}
	tr{
		line-height:30px;
	}
</style>
<body>
	<form action="loginChkAction" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;码：</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td align="right"><input type="submit" value="登录"></td>
				<td align="center"><input type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body>
</html>