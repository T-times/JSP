<%@ page language="java"  contentType="text/html;  charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <title>My JSP 'response.jsp' starting page</title>
  </head>
  <body>
   用户名：<%=request.getSession().getAttribute("username") %>
密码 ：<%=request.getSession().getAttribute("password") %>
  </body>
</html>