<%@ page import="java.sql.*" pageEncoding="UTF-8" import = "Student.JavaBean"%>
<html>
<head>
<title>学生信息删除界面</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");

JavaBean jj = new JavaBean();
Connection con = jj.getConn();
Statement stmt = con.createStatement();
String sql= " SELECT * FROM student ";
stmt.executeUpdate("delete from student where id= " + id);
ResultSet rs=stmt.executeQuery(sql);
out.println("<script language='javascript'>alert('删除成功！');window.location.href='Management.jsp';</script>");	

stmt.close(); 
con.close();
%>
</body>
