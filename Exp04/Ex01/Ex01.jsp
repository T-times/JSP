<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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
  	
	float[] grade=new float[5];
	grade[0]=66;
	grade[1]=76;
	grade[2]=89;
	grade[3]=91;
	grade[4]=72;
	pageContext.setAttribute("grade",grade);
	
   %>
  <body>
    grade1:${grade[0]}<br>
    grade2:${grade[1]}<br>
    grade3:${grade[2]}<br>
    grade4:${grade[3]}<br>
    grade5:${grade[4]}<br>
    sum:${grade[0]+grade[1]+grade[2]+grade[3]+grade[4] } <br>
    avg:${(grade[0]+grade[1]+grade[2]+grade[3]+grade[4])/5 } <br>
  </body>
</html>
