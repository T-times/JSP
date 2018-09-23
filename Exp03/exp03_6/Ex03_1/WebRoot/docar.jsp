<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%@ page import="com.toolsBean.MyTools" %>
<jsp:useBean id="myCar" class="com.toolsBean.ShopCar" scope="session"/>
<%
	String action=request.getParameter("action");
	if(action==null)
		action="";	
	if(action.equals("buy")){
		String type=request.getParameter("buy");
	    if(MyTools.toChinese(type).equals("加入购物车"))	    {
           ArrayList goodslist=(ArrayList)session.getAttribute("goodsList");	
           int id=MyTools.strToint(request.getParameter("id"));		
		   GoodsSingle single=(GoodsSingle)goodslist.get(id);
		   myCar.addItem(single);
%>
           <jsp:forward page="goods.jsp">
                <jsp:param name="goods" value="<%=id%>"/>
           </jsp:forward>
<%
	    }
	    else if(MyTools.toChinese(type).equals("查看购物车"))	    {
	    	response.sendRedirect("shopcar.jsp");
	    }
	    else{
	    	response.sendRedirect("show.jsp");
	    }
	}
	else if(action.equals("addbuy")){
		String name=request.getParameter("name");
		System.out.print(name);
		myCar.addItem(name);
		response.sendRedirect("shopcar.jsp");		
	}
	else if(action.equals("remove")){
		String name=request.getParameter("name");
		myCar.removeItem(name);	
		response.sendRedirect("shopcar.jsp");		
	}
	else if(action.equals("clear")){
		myCar.clearCar();
		response.sendRedirect("shopcar.jsp");
	}
	else{
		response.sendRedirect("show.jsp");		
	}
%>