<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp计算器</title>
</head>
<body>

<%
HttpSession ses =request.getSession();
ses.setAttribute("username", "孤独求败");
ses.setAttribute("password", "123456");
response.sendRedirect("t2.jsp");
%>

</body>
</html>