package Student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Student.JavaBean;
/**
 * Servlet implementation class StudentServlet
 */
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// TODO Auto-generated method stub
		try {
			JavaBean jb = new JavaBean();
			jb.OpenConn();
			String sql = "select * from student";
			ResultSet rs = jb.executeQuery(sql);
		while(rs.next()){
		out.println("学生学号："+ rs.getInt(1));
		out.println("学生姓名："+ rs.getString(2));
		out.println("<br>");
		}
		rs.close(); 
		jb.closeStmt();
		jb.closeConn();
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("ShowStudent.jsp").forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
