package Student;

import java.sql.*;

public class JavaBean {
	private String connStr = "jdbc:mysql://localhost:3306/db_01"; 
	private String dbusername = "root";
	private String dbpassword = "123456";
	private Connection conn = null;
	private Statement ps = null;
	
	
	public JavaBean(){      	//与数据库建立链接
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Success loading Mysql Driver!");
			conn = DriverManager.getConnection(connStr,dbusername,dbpassword);
			System.out.println("Success connect Mysql server!");
			ps = conn.createStatement();
		}
		catch(Exception ex){
			System.out.println("无法与数据库建立连接！");
		}
	}
    
    public Connection getConn() {
    	    return this.conn;
    }
	
	public void OpenConn() throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Success loading Mysql Driver!");
			conn = DriverManager.getConnection(connStr,dbusername,dbpassword);
			System.out.println("Success connect Mysql server!");
			ps = conn.createStatement();
		}
		catch(Exception ex){
			System.out.println("无法与数据库建立连接！");
		}
	}
	
	public int executeUpdate(String s){		//更新程序
		int result=0;
		try{
			result=ps.executeUpdate(s);
		}
		catch(Exception ex){
			System.out.println("执行更新错误！");
		}
		return result;
	}
	
	public ResultSet executeQuery(String s){		//查询数据
		ResultSet rs = null;
		try{
			rs = ps.executeQuery(s);
		}catch(Exception ex){
			System.out.println("执行查询错误！");
		}
		return rs;
	}
	
	public void closeStmt(){
        try{
            ps.close();
        }
        catch(Exception e){
            System.err.println("Data.executeQuery: " + e.getMessage());
        }
    }
    public void closeConn(){
        try{
            conn.close();
        }
        catch(Exception e){
            System.err.println("Data.executeQuery: " + e.getMessage());
        }
    }
}