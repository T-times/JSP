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
	<tr height="50"><td colspan="7" align="center"><font color="blue">���Ĺ��ﳵ</font></td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td width="25%">����</td>
		<td>ͼƬ</td>
		<td>�۸�(Ԫ)</td>		
		<td colspan="3">����</td>	
		<td>�ܼ�(Ԫ)</td>
	</tr>
	<%	if(buyList==null||buyList.size()==0){ %>
	<tr height="100"><td colspan="7" align="center">���Ĺ��ﳵΪ�գ�</td></tr>
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
	<tr height="50" align="center"><td colspan="7"><font color="red">���ﳵ�й���<%=count %>����Ʒ�����㣺<font size="5">��<%=total%>Ԫ</font></font></td></tr>
	<tr height="50" align="center">
		<td colspan="2">
		<form action="show.jsp" method="post">
		     <input type="submit" value="��������">
		</form>
		</td>
		<td colspan="5">
		<form action="docar.jsp?action=clear" method="post">
		     <input type="submit" value="��չ��ﳵ">
		</form>
		</td>
	</tr>				
</table>