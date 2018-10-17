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
		//登录
		
		//解决乱码问题
		request.setCharacterEncoding("utf-8");
		//获取请求参数
		String username=request.getParameter("username");
		String password=request.getParameter("password");

		try{
	        Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动，注册到驱动管理器
	        String url="jdbc:mysql://localhost:3306/test";
	        String name="root";
	        String passwd="123456";
	        Connection conn=DriverManager.getConnection(url,name,passwd);
	        if(conn!=null){
	            System.out.println("数据库连接成功！！！");
				//查询数据
				String sql = "select * from user where username=? and password=?";
				Object [] param={username,password};
				PreparedStatement ps=null;
	           	ps = conn.prepareStatement(sql);
	           	//参数的注入
	           	for(int i=0;i<param.length;i++){
					//为占位符拼接参数  占位从1开始
					ps.setObject((i+1),param[i]);
				}
				//执行sql
				ResultSet rs=ps.executeQuery();
				if( rs.first()){
					request.getRequestDispatcher("/welcome.jsp").forward(request, response);
				}
				else {
					request.getRequestDispatcher("/error.jsp").forward(request, response);
				}
					//关闭prepareStatement
				ps.close();
				//关闭连接
	    		conn.close();
	    		rs.close();
	    		
	        }else{
	        	System.out.println("数据库连接失败！！！");
	        }
	    }catch(ClassNotFoundException | SQLException e){
	        e.printStackTrace();
	    }
	}}
