<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<jsp:useBean id="myCar" class="com.toolsBean.ShopCar" scope="session"/>
<% 
	ArrayList buyList=myCar.getBuyList();
	float total=0;	
	int count=0;
%>

<table width="450" border="1" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="7" align="center"><font color="blue">您的购物车</font></td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="25%">名称</td>
		<td>图片</td>
		<td>价格(元)</td>		
		<td colspan="3">数量</td>	
		<td>总价(元)</td>
	</tr>
	<%	if(buyList==null||buyList.size()==0){ %>
	<tr height="100"><td colspan="7" align="center">您的购物车为空！</td></tr>
	<% 
		}
		else{
			for(int i=0;i<buyList.size();i++){
				GoodsSingle single=(GoodsSingle)buyList.get(i);
				String name=single.getName();	
				float price=single.getPrice();	
				int num=single.getNum();				
				float money=price*num;	
				total+=money;	
				if(num!=1)
					count+=num;
				else
					count++;
	%>
	<tr align="center" height="50">
		<td><%=name%></td>
		<td>
        <%     
        int j;
        ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");
        for(j=0;j<goodsList.size();j++){					
			GoodsSingle temp=(GoodsSingle)goodsList.get(j);		
			if(temp.getName().equals(name)){				
				break;										
			}
		}
        
        %>
        <img src="images/<%="goods"+j%>.jpg" width="100">
        </td>
		<td><%=price%></td>
		<td width="30" align="right">
           <form action="docar.jsp?action=remove&name=<%=name%>" method="post">
		     <input type="submit" value="-" style="border:none;">
		   </form>
		</td>
		<td  width="30">
           <%=num%>
        </td>
        <td  width="30" align="left">
           <form action="docar.jsp?action=addbuy&name=<%=single.getName()%>" method="post">
		     <input type="submit" value="+" style="border:none;">
		   </form>
        </td>
        <td><%=money%></td>
	</tr>
	<%							
			}
		}
	%>
	<tr height="50" align="center"><td colspan="7"><font color="red">购物车中共有<%=count %>件商品，结算：<font size="5">￥<%=total%>元</font></font></td></tr>
	<tr height="50" align="center">
		<td colspan="2">
		<form action="show.jsp" method="post">
		     <input type="submit" value="继续购物">
		</form>
		</td>
		<td colspan="5">
		<form action="docar.jsp?action=clear" method="post">
		     <input type="submit" value="清空购物车">
		</form>
		</td>
	</tr>				
</table>