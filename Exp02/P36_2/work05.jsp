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
	<style>
		.one{
			background-color:#ccc;
			text-align:center;
		}
		.main{
			width:800px;
		}
		table{
			margin: 100px auto;
		}
		td{
			text-align: center;
		}
	</style>
  </head>
  
  <body>
    <%!
    	String id[]={"01002019601026929","01002019711126928"};
    %>
    <table border="1"cellspacing="0" class="main">
    	<tr class="one">
    		<td width="400px">身份证</td>
    		<td>生日</td>
    	</tr>
    	<tr>
    		<td><%= id[0] %></td>
    		<td><%= id[0].substring(6, 10)%>-<%= id[0].substring(10, 12)%>-<%= id[0].substring(12,14) %></td>
    	</tr>
    	<tr>
    		<td><%= id[1] %></td>
    		<td><%= id[1].substring(6, 10)%>-<%= id[1].substring(10, 12)%>-<%= id[1].substring(12,14) %></td>
    	</tr>
    </table>
  </body>
</html>
