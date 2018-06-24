<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
  <head>  
      
    <title>管理员登陆界面</title>  
  
  <body>
  <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
  <img src="Pic/b1.jpg" width="100%" height="100%"/>  
  </div>
  
  <center>  
    <h1 style = "font-family:Heiti SC;color:white;font-size:40px;">管理员登陆界面</h1>   
    
    <form action = "login.action" method="post">  
      <table width="300" height = "180" border="0">   
        <tr>  
          <th style = "font-family:Heiti SC;color:white;font-size:20px;">用 户 名：</th>  
          <td><input type="text" name="user.username"></td>  
        </tr>  
        <tr>  
          <th style = "font-family:Heiti SC;color:white;font-size:20px;">密 码：</th>  
          <td><input type="password" name="user.password" maxlength = "20"></td>  
        </tr>  
        <tr>  
          <td colspan = "2" align = "center">  
            <input type="submit" value="登   录">  
            <input type="button" value="返   回"  onclick="windows.location.href('StudentManagement.jsp')">  
          </td>  
        </tr>  
      </table>  
      
    </form>  
</center> 
</body>  
</html>  