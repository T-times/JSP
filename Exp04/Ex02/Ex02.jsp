<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  
  <body>
  以下是自定义的两个整数值：<br>
    <%
    pageContext.setAttribute("first",10);
    pageContext.setAttribute("second",6);
     %>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${second}
    <br> 比较结果：<br>
     

     <br>
     <br>
     <c:choose>
		<c:when test="${first>second }">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first }>${second }
		</c:when>
		<c:when test="${first==second }">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first }=${second }
		</c:when>
		<c:otherwise>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${first }<${second }
		</c:otherwise>
	</c:choose>
  </body>
</html>
