<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%	ArrayList goodsList=(ArrayList)session.getAttribute("goodsList");	%>
<table width="450" border="1" rules="none" cellspacing="0" cellpadding="0">
	<tr height="50"><td colspan="3" align="center"><font color="blue">��ӭ��������ߵ�Ŷ��</font></td></tr>
	<tr align="center" height="30" bgcolor="lightgrey">
		<td>����</td>
		<td>ͼƬ</td>
	    <td>�۸�(Ԫ)</td>
	</tr>
	<%  if(goodsList==null||goodsList.size()==0){ %>
	<tr height="100"><td colspan="4" align="center">û����Ʒ����ʾ��</td></tr>
	<% 
		} 
		else{
			for(int i=0;i<goodsList.size();i++){
				GoodsSingle single=(GoodsSingle)goodsList.get(i);
	%>           
	<tr height="50" align="center">
		<td><a href="goods.jsp?goods=<%=i %>" style="text-decoration:none"><%=single.getName()%></a></td>
		<td><a href="goods.jsp?goods=<%=i %>"><img src="images/<%="goods"+i%>.jpg" border="0" width="100"></a></td>
		<td><%=single.getPrice()%></td>
	</tr>

	<%
			}
		}
	%>
	<tr height="70">
    <td align="center" colspan="3">
        <form action="shopcar.jsp" method="post">
		     <input type="submit" value="�鿴���ﳵ">
		</form>
    </td>
    </tr>
</table>
