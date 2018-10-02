<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
  <%
  	//背景色
  	String color="Pink";
  	//字体大小
  	String size="5";
  	//表格宽度
  	String width="1000";
  	//表格边框
  	String bwidth="1";
    pageContext.setAttribute("color",color);
    pageContext.setAttribute("size",size);
    pageContext.setAttribute("bwidth",bwidth);
    pageContext.setAttribute("width",width);
   %>
  <body bgcolor='${pageScope.color}'>
    <font size="${pageScope.size}">这是一行字，可以设置大小</font><br>
    <table border="${pageScope.bwidth}" width="${pageScope.width}">
    	<tr>
    		<td>这是一个表格，可以设置宽度和边框</td>
    	</tr>
    	
    </table>
  </body>
</html>
