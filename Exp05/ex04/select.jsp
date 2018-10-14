<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
    try{
        Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动，注册到驱动管理器
        String url="jdbc:mysql://localhost:3306/test";
        String username="root";
        String password="123456";
        Connection conn=DriverManager.getConnection(url,username,password);
        if(conn!=null){
            out.println("数据库连接成功！！！");
			//查询数据
			String sql = "select * from employee";
			PreparedStatement ps=null;
           	ps = conn.prepareStatement(sql);
			//执行sql
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				out.println(rs.getString("EMP_NAME"));
				out.println(rs.getString("JOB"));
				out.println(rs.getDouble("SALARY"));
				out.println(rs.getInt("DEPT"));
			}
			//关闭prepareStatement
			ps.close();
			//关闭连接
    		conn.close();
    		rs.close();
    		
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
%>
</body>
</html>