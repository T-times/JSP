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
			String sql = "update employee set EMP_NAME='update' where EMP_ID=1 ";
			PreparedStatement ps=null;
           	ps = conn.prepareStatement(sql);
			//执行sql
			int x =ps.executeUpdate();
			if(x >0){
				out.println("数据修改成功");
			}else{
				out.println("数据修改失败");
			}
			//关闭prepareStatement
			ps.close();
			//关闭连接
    		conn.close();
    		
        }else{
            out.println("数据库连接失败！！！");
        }
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
%>
</body>
</html>