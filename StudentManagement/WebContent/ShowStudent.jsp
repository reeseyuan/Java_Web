<%@ page  import="java.sql.*" pageEncoding="UTF-8" import = "Student.JavaBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>学生信息列表</title>
<style type = "text/css">
    a{
    text-decoration:none;
    }
    
    a:link{color: DimGrey}
    a:hover{color: Grey}
    a:visited{color: DarkGrey}
</style>
</head>
<body>
<center>
  <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
  <img src="Pic/b6.jpg" width="100%" height="100%"/>  
  </div>
  <h1 style = "font-family:Heiti SC;color:Black;font-size:40px;">学生信息管理系统</h1>
  <h2 style = "font-family:Heiti SC;color:Grey;font-size:30px">学生信息列表</h2>
<%
JavaBean jb = new JavaBean();
Connection con = jb.getConn();
Statement stmt=con.createStatement();
String sql= " SELECT * FROM student";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next()){
out.println("学生学号："+ rs.getInt(1));
out.println("学生姓名："+ rs.getString(2));
out.println("<br>");
}
stmt.close(); 
con.close();
%>
<br>
<a href="Management.jsp" target="_blank">返回首页</a>
</center>
</body>