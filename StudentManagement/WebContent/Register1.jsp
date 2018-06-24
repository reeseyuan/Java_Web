<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" import = "Student.JavaBean"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>管理员注册界面</title>  
  </head>  
  <body>  
    <%        
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");    
    String password = request.getParameter("password");  
    
    JavaBean jb = new JavaBean();
    Connection conn = jb.getConn();  
    PreparedStatement st = conn.prepareStatement("Insert into user values('" + username + "','" + password + "')"); 
    
    ResultSet rs = st.executeQuery("select * from user where username = '"+request.getParameter("username")+"';");
    if(rs.next())
    {
    	out.println("<script  language='javascript'>alert('用户名重复！');window.location.href='StudentManagement.jsp';</script>");
    }
    else{
    int rst = st.executeUpdate();
    if (rst != 0){
    out.println("<script language='javascript'>alert('管理员注册成功！');window.location.href='StudentManagement.jsp';</script>");    
    }
    }
    
    st.close();
    conn.close();
    %>  
  </body>  
</html> 