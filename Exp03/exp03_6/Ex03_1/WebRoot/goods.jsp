<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%@ page import="com.toolsBean.MyTools" %>
<%	ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");	%>
<table width="450" border="1" rules="none" cellspacing="0" cellpadding="0">
	<%  if(goodsList==null||goodsList.size()==0){ %>
	<tr height="100"><td colspan="4" align="center">没有商品可显示！</td></tr>
	<% 
		} 
		else{
				int id=MyTools.strToint(request.getParameter("goods"));
				GoodsSingle single=(GoodsSingle)goodsList.get(id);
	%>
	<tr height="50" align="center">
	    <td><img src="images/<%="goods"+id%>.jpg" width="450"></td>
	</tr>
	<tr height="50">
		<td><%=single.getName()%>：<%=single.getProduct() %></td>
	</tr>
	<tr height="50">
		<td><font size="5" color="red">￥<%=single.getPrice()%></font></td>
	</tr>
	<tr height="50">
		<td align="center">
		<form action="docar.jsp?action=buy&id=<%=id %>" method="post">
		     <input type="submit" value="加入购物车" name="buy">&nbsp;&nbsp;
		     <input type="submit" value="查看购物车" name="buy">&nbsp;&nbsp;
		     <input type="submit" value="返回商城" name="buy">
		</form>
		</td>
	</tr>

	<%
			}
	%>
</table>
