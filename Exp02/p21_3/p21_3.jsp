<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>work02</title>
    <style>
    	#shape{
    		width: 100%;
    		height: 50px;
    		
    	}
    </style>
  </head>
  <body>
    <%
        String[] colors={"Green","Cyan","Black","Red","Yellow","Pink"};
        for(int i=0;i<colors.length;i++)
        {
    %>
    <div id="shape"  style="background-color:<%=colors[i] %>;" ></div>
            
    <%  }%>  
  
  </body>
</html>