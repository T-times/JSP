package cn.niit.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import cn.niit.pojo.User;

//操作数据库的公共方法
public class DBUtlis {
	//获得连接
	public Connection getConnection(){
		try {
			//1.导入jar包  
			 Class.forName("com.mysql.cj.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
			//2.获得连接
			 return DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false", "root", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	//公共的关闭
	public void closeAll(Connection conn,PreparedStatement ps,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	//公共的增删改的方法
	public int executeUpdate(String sql,Object...param){
		Connection conn=null;
		PreparedStatement ps=null;
		try {
			//获得连接
			conn=getConnection();
			//传sql
			ps = conn.prepareStatement(sql);
			
			//参数的注入
			for(int i=0;i<param.length;i++){
				//为占位符拼接参数  占位从1开始
				ps.setObject((i+1),param[i]);
			}
			
			//执行sql
			return ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//关闭连接
			closeAll(conn, ps, null);
		}
		return 0;
	}
	
	
	//查询
	public ArrayList<User> executeQuery(String sql,Object...param){
		//定义一个集合 来封装查询满足条件的数据
		ArrayList<User> users=new ArrayList<User>();
		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//获得连接
			conn=getConnection();
			//传sql
			ps = conn.prepareStatement(sql);
			
			//参数的注入
			for(int i=0;i<param.length;i++){
				//为占位符拼接参数  占位从1开始
				ps.setObject((i+1),param[i]);
			}
			
			
			//执行sql
			rs=ps.executeQuery();
			
			//遍历获取查询的结果集
			while(rs.next()){
				//获取当前列的数据 可以根据列名或列所在的位置来获取对应的值
				//封装成一个员工对象
				User user=new User(rs.getInt(1),rs.getString(2),rs.getString(3));
				//将封装好的员工对象 放入集合中
				users.add(user);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//关闭连接
			closeAll(conn, ps, rs);
		}

		return users;

	}
	
	
	
	//查询单行单列的
	public int executeQueryUnique(String sql){		
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			//获得连接
			conn=getConnection();
			//传sql
			ps = conn.prepareStatement(sql);
			
		
			//执行sql
			rs=ps.executeQuery();
			
			//遍历获取查询的结果集
			if(rs.next()){
				return rs.getInt(1);
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			//关闭连接
			closeAll(conn, ps, rs);
		}
		return 0;
	}
	
	
	

	
}
