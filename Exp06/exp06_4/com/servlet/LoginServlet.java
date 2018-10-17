package com.servlet;

import com.user.*;
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//��¼
		
		//�����������
		request.setCharacterEncoding("utf-8");
		//��ȡ�������
		String username=request.getParameter("username");
		String password=request.getParameter("password");

		try{
	        Class.forName("com.mysql.jdbc.Driver");//�������ݿ�������ע�ᵽ����������
	        String url="jdbc:mysql://localhost:3306/test";
	        String name="root";
	        String passwd="123456";
	        Connection conn=DriverManager.getConnection(url,name,passwd);
	        if(conn!=null){
	            System.out.println("���ݿ����ӳɹ�������");
				//��ѯ����
				String sql = "select * from user where username=? and password=?";
				Object [] param={username,password};
				PreparedStatement ps=null;
	           	ps = conn.prepareStatement(sql);
	           	//������ע��
	           	for(int i=0;i<param.length;i++){
					//Ϊռλ��ƴ�Ӳ���  ռλ��1��ʼ
					ps.setObject((i+1),param[i]);
				}
				//ִ��sql
				ResultSet rs=ps.executeQuery();
				if( rs.first()){
					request.getRequestDispatcher("/welcome.jsp").forward(request, response);
				}
				else {
					request.getRequestDispatcher("/error.jsp").forward(request, response);
				}
					//�ر�prepareStatement
				ps.close();
				//�ر�����
	    		conn.close();
	    		rs.close();
	    		
	        }else{
	        	System.out.println("���ݿ�����ʧ�ܣ�����");
	        }
	    }catch(ClassNotFoundException | SQLException e){
	        e.printStackTrace();
	    }
	}}
