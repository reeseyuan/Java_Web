package Student;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

import Student.JavaBean;
import Student.UserInfo;


public class UserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private UserInfo user;

	public void setUser(UserInfo user) {
		this.user = user;
	}
	
	public UserInfo getUser() {
		return user;
	}

	public String login() throws Exception{
		String usr = user.getUsername();
		String pwd = user.getPassword();
		
		boolean validated = false;
		JavaBean myBean = new JavaBean();
		String sql = "select * from user";
		myBean.OpenConn();
		ResultSet rs = myBean.executeQuery(sql);
		while(rs.next()) {
			if(usr.equals(rs.getString("username")) && pwd.equals(rs.getString("password")))
				validated = true;
		}
		rs.close();
		myBean.closeStmt();
		myBean.closeConn();
		if(validated == true) {
			return "SUCCESS";
		}
		else {
			return "ERROR";
		}
		
	}
}