<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%!
	static ArrayList goodsList=new ArrayList();
	static{	
		String[] name={"玩具熊","玩具飞机模型","兔子玩偶","鳄鱼玩偶"};
		String[] product={"玩具熊：超柔软 不掉毛，安全更放心，送礼有面子！","玩具飞机模型：进口优质EPP航模飞机专用材料","兔子玩偶：安全放心的欧盟标准，出生就可以使用的放心安抚玩具。","鳄鱼玩偶： 鳄鱼软体睡觉抱枕毛绒玩具"};
		                                      
		float[] price={60f,78f,100f,90f};
		
		for(int i=0;i<4;i++){
						
			GoodsSingle single=new GoodsSingle();
			single.setName(name[i]); 
			single.setProduct(product[i]); 
			single.setPrice(price[i]); 
			single.setNum(1); 
			goodsList.add(i,single); 
		}	
	}
%>
<%
	session.setAttribute("goodsList",goodsList);
	response.sendRedirect("show.jsp");
%>
