<%@ page import="java.sql.*" pageEncoding="UTF-8" import = "Student.JavaBean"%>
<html>
<head>
<title>学生信息修改界面</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String studentname =request.getParameter("studentname");

JavaBean jj = new JavaBean();
Connection con = jj.getConn();
Statement stmt = con.createStatement();

String sql= " SELECT * FROM student ";
String sql1= "update student set studentname = '"+studentname+"' where id = " + id;
stmt.executeUpdate(sql1);
ResultSet rs=stmt.executeQuery(sql);
out.println("<script language='javascript'>alert('修改成功！');window.location.href='Management.jsp';</script>");

stmt.close(); 
con.close();
%>
</body>
</html>