<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cfb.jsp' starting page</title>
    
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
  	<!--  <%=request.getParameter("number") %>-->
  	<br />
  <% 
  pageContext.setAttribute("x",request.getParameter("number"));
  Object m= pageContext.findAttribute("x");
  int n= Integer.parseInt(m.toString());
   for (int i=1;i<=n;i++) {
	for (int j=1;j<=i;j++){
		pageContext.setAttribute("i",i);
		pageContext.setAttribute("j",j);
%>
${i}*${j}=${i*j}&nbsp;&nbsp;
<%
}
%>
<br>
<%
}
//out.print( pageContext.findAttribute("x"));
%>
  </body>
</html>
