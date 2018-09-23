<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="loginUser" class="com.po.Users" scope="page"></jsp:useBean>
    <jsp:useBean id="userDao" class="Dao.UserDao"></jsp:useBean>
    <jsp:setProperty property="*" name="loginUser"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>使用userbean创建实例</title>
</head>
<body>
    <%
        if(userDao.userLogin(loginUser)){
            session.setAttribute("username", loginUser.getUsername());
            //登录成功，跳转到显示成功信息界面
            request.getRequestDispatcher("login_success.jsp").forward(request, response);
        }else{
            //登录失败，跳转到显示错误信息界面
            response.sendRedirect("login_failure.jsp");
        }
    %>
</body>
</html>
