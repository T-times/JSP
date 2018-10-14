package com;

import com.DbPoolConnection;
import com.alibaba.druid.pool.DruidPooledConnection;
import com.alibaba.druid.pool.GetConnectionTimeoutException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class druid_test {
	private static void executeUpdateBySQL(String sql) throws SQLException {
		DbPoolConnection dbp = DbPoolConnection.getInstance();
		DruidPooledConnection con = dbp.getConnection();
		PreparedStatement ps = con.prepareStatement(sql);
		try{
			con=dbp.getConnection();
			ps=con.prepareStatement(sql);
			ps.executeUpdate();
		}catch (GetConnectionTimeoutException e){
			throw new IllegalArgumentException("数据库连接异常");
		} finally {
			if(ps!=null)
				try {
					ps.close();
					System.out.println("ps is close");
				}catch (SQLException e1){
					System.out.println("ps close is error");
				} if(con!=null) try {
					con.close();
					System.out.println("con is close");
				}catch (SQLException e){
					System.out.println("con close is error");
				}
		}
	}
	
	public static void main(String []args) throws SQLException {
		String sql="insert into user values(1,'azure',18)";
		executeUpdateBySQL(sql);
	}
}
