<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>result.jsp</title>
</head>
<body>
       用户名：<%=request.getParameter("userName") %><br><br>
       密码：<%=request.getParameter("password") %><br><br>
       请求使用的协议：<%=request.getProtocol() %><br><br>
       请求的URI：<%=request.getServletPath() %><br><br>
       请求方法：<%=request.getMethod() %><br><br>
       远程地址：<%=request.getRemoteAddr()%><br><br>
       
</body>
</html>