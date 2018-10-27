package cn.niit.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.niit.dao.Userdao;
import cn.niit.pojo.User;

public class LoginChkServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//登录
		
		//解决乱码问题
		request.setCharacterEncoding("utf-8");
		//获取请求参数
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//调用数据访问的方法 进行登录
		Userdao ud=new Userdao();
		//调用方法 返回查询的结果集
		System.out.println("++++++"+username);
		ArrayList<User> users=ud.login(username, password);
		//判断结果集是否大于0 
		if(users.size()>0){
			//成功 
			//跳转
			request.getRequestDispatcher("/welcome.jsp").forward(request, response);
		}else{
			//失败
			//跳转
			request.getRequestDispatcher("/error.jsp").forward(request, response);
		}
	}

}
