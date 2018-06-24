<%@ page  import="java.sql.*" pageEncoding="UTF-8" import = "Student.JavaBean"%>
<html>
<head>
<title>学生信息添加界面</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id=request.getParameter("id");
String studentname =request.getParameter("studentname");

JavaBean jj = new JavaBean();
Connection con = jj.getConn();
String sql = "insert into student(id,studentname)  values('"+ id +"','"+studentname+"')";
Statement stmt=con.createStatement();
ResultSet rs = stmt.executeQuery("select * from student where id = '"+request.getParameter("id")+"';");
if(rs.next())
{
	out.println("<script  language='javascript'>alert('学号重复！');window.location.href='Management.jsp';</script>");
}
else{

stmt.executeUpdate(sql);
out.println("<script language='javascript'>alert('添加成功！');window.location.href='Management.jsp';</script>");
}
stmt.close(); 
con.close();
%>
</body> 
</html>