# JSP
just to study
实验六 JSTL
难点主要是最后一题，所以主要说说最后一题的思路
  这里我用了post表单提交给com.servlet下的LoginServlet处理，
  然后根据取返回的结果集的第一个参数就可以知道是否查询到，
  查询到就认为载数据库中，可以登陆
  否则，认为登录失败

LoginServlet
从submit登陆按钮点击之后传输数据在url，截取url获得用户输入的username，password，
然后根据sql，连接数据库之后查询username，password是否在数据库中，根据返回的result结果集判定
主要是sql的注入，利用之前的“？”占位符，然后利用循环将数据注入到sql语句中，这样就可以实现数据库查询sql语句
