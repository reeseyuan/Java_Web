<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>学生信息删除界面</title>
<script type="text/javascript">
function check(){
	var id = document.getElementById("id").value;
	
	if(id==""){
		alert("删除学号不能为空！");
		document.getElementById("id").focus();
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
  <div id="Layer1" style="position:absolute; position:fixed; left:0px; top:0px; width:100%; height:100%; z-index:-10">  
  <img src="Pic/b5.jpg" width="100%" height="100%"/>  
  </div>
  <center>
  <h1 style = "font-family:Heiti SC;color:white;font-size:40px;">学生信息管理系统</h1>
  <form action="Delete1.jsp" onsubmit = "return validate()" method="post">
  <h2 style = "font-family:Heiti SC;color:white;font-size:20px">输入要删除的学生学号</h2>
  <input  type="text" name="id" id = "id">
  <br><br>
  <input type="submit" value="确 定">
  </form>
  </center>>
</body>
</html>