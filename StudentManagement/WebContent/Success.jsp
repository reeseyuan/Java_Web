<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <title>登录成功</title>  
    <style type = "text/css">
    a{
    text-decoration:none;
    }
    
    a:link{color: Black}
    a:hover{color: Grey}
    a:visited{color: DarkGrey}
    </style>
  </head>  
  <body>
  <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
  <img src="Pic/b3.jpg" width="100%" height="100%"/>  
  </div>  
    <center style="font-family:Heiti SC;font-size:35px;">  
    <%  
     request.setCharacterEncoding("UTF-8");
     
     out.println("登陆成功！");  
    %>
    <br> 
    <br> 
    <h3 style = "font-family:Heiti SC;color:white;font-size:20px;"><a href="Management.jsp">进入学生信息管理系统</a></h3>  
    <h3 style = "font-family:Heiti SC;color:white;font-size:20px;"><a href="StudentManagement.jsp">重新登陆</a></h3>  
    </center>  
  </body>  
</html>  