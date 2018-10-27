package cn.niit.dao;

import java.util.ArrayList;

import cn.niit.pojo.User;
import cn.niit.utils.DBUtlis;

//数据访问的接口
public class Userdao {
	DBUtlis db=new DBUtlis();
	//登录
		public ArrayList<User> login(String username,String password){
			//先写sql
			String sql="select * from user where name=? and password=?";
			//收集占位符对应的参数
			Object [] param={username,password};
			//调用公共类的方法
			return db.executeQuery(sql, param);
		}
}
