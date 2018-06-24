<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>
    <title>管理员注册界面</title>  
    <script>  
    function addCheck(){  
        var username=document.getElementById("username").value;  
        var password=document.getElementById("password").value;  
        var newword=document.getElementById("newword").value;  
        if(username==""){  
            alert("用户名不能为空!");  
            document.getElementById("username").focus();    
            return false;  
            } 
        if(password==""){  
            alert("密码不能为空!");  
             document.getElementById("password").focus();  
             return false;  
             }  
        if(password != newword){  
            alert("两次输入密码不相同!");  
             document.getElementById("newword").focus();  
             return false;  
             }  
        if (form1.confirm.value == "") {//判断验证码是否为空
			alert("请输入验证码!");
			form1.confirm.focus();
			return false;
		}
		if (form1.confirm.value != form1.verifycode2.value) {//判断验证码是否正确
			alert("请输入正确的验证码!!");
			form1.confirm.focus();
			return false;
		}
		
		form1.submit();
        
    }  
    function validate(){  
        var flag = addCheck();  
        if(flag == false)  
            return false;  
        return true;  
    }  
    </script>
  </head> 
    
  <body>
    <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
      <img src="Pic/b1.jpg" width="100%" height="100%"/>  
    </div>      
    <center>  
    <h1 style = "font-family:Heiti SC;color:white;font-size:40px;">管理员注册界面</h1>  
    <br>
    <form name = "form1" action = "Register1.jsp" onsubmit = "return validate()">  
    <table width="300" height = "180" border="0">  
      <tr>  
        <th style = "font-family:Heiti SC; color:white; font-size:20px;">用  户  名：</th>  
        <td><input type="text" id="username" name="username" value="" maxlength = "16"></td>  
      </tr>  
      <tr>  
        <th style = "font-family:Heiti SC; color:white; font-size:20px;">输入密码：</th>  
        <td><input type="password" id="password" name="password"value="" maxlength = "20"></td>  
      </tr>  
      <tr>  
        <th style = "font-family:Heiti SC; color:white; font-size:20px;">确认密码：</th>  
        <td><input type="password" id="newword" name="newword" value="" maxlength = "20"></td>  
      </tr>  
      <tr>  
          <th style = "font-family:Heiti SC;color:white;font-size:20px;">验 证 码：</th>  
          <td><input type="text" id = "confirm" name="confirm" maxlength = "20" onKeyDown="if(event.keyCode==13){form1.Submit.focus();}" size="10">
          <%
			int intmethod = (int) ((((Math.random()) * 11)) - 1);
			int intmethod2 = (int) ((((Math.random()) * 11)) - 1);
			int intmethod3 = (int) ((((Math.random()) * 11)) - 1);
			int intmethod4 = (int) ((((Math.random()) * 11)) - 1);
			String intsum = intmethod + "" + intmethod2 + intmethod3 + intmethod4;
			//将得到的随机数进行连接
		%>
		<input type="hidden" name="verifycode2" value="<%=intsum%>">	<!-- 设置隐藏域,用来做验证比较-->
		<!-- 将图片名称与得到的随机数相同的图片显示在页面上  --> 
		<img src="Pic/<%=intmethod%>.gif"> <img src="Pic/<%=intmethod2%>.gif"> 
		<img src="Pic/<%=intmethod3%>.gif"> <img src="Pic/<%=intmethod4%>.gif"></td>
        </tr>
      
      <tr>  
        <td colspan = "2" align = "center">  
        <input type="submit" value="注   册">      
        <input type="reset" value="重   置">  
        </td>  
      </tr>  
    </table>  
    </form>  
    </center>  
  </body>  
</html>  