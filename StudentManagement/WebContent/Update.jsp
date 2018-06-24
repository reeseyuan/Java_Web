<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>学生信息修改界面</title>
<script type="text/javascript">
function check(){
	var id = document.getElementById("id").value;
	var sn = document.getElementById("studentname").value;
	if(id==""){
		alert("修改学号不能为空！");
		document.getElementById("id").focus();
		return false;
	}
	if(sn==""){
		alert("修改学生姓名不能为空！");
		document.getElementById("studentname").focus();
		return false;
	}
}
	function validate(){
		var flag = check();
		if(flag==false)
			return false;
		return true;
	}
	


</script>
</head>
<body>
  <center>
  <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
  <img src="Pic/b5.jpg" width="100%" height="100%"/>  
  </div>
  <h1 style = "font-family:Heiti SC;color:white;font-size:40px;">学生信息管理系统</h1>
  <form action="Update1.jsp"  onsubmit = "return validate()" method="post">
  <h2 style = "font-family:Heiti SC;color:white;font-size:20px">输入要修改的学生学号</h2>
  <input  type="text" name="id" id = "id">
  <h2 style = "font-family:Heiti SC;color:white;font-size:20px">输入修改后的学生姓名</h2>
  <input  type="text" name="studentname" id = "studentname">
  <br><br>
  <input  type="submit" value="确定 ">
  </form>
  </center>
</body>
</html>