<%@ page contentType="text/html;charset=gbk"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.valueBean.GoodsSingle" %>
<%!
	static ArrayList goodsList=new ArrayList();
	static{	
		String[] name={"�����","��߷ɻ�ģ��","������ż","������ż"};
		String[] product={"����ܣ������� ����ë����ȫ�����ģ����������ӣ�","��߷ɻ�ģ�ͣ���������EPP��ģ�ɻ�ר�ò���","������ż����ȫ���ĵ�ŷ�˱�׼�������Ϳ���ʹ�õķ��İ�����ߡ�","������ż�� ��������˯������ë�����"};
		                                      
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
