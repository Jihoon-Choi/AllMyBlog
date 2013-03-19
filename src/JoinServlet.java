

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("euc-kr");
		
		request.setCharacterEncoding("euc-kr");
		String name=request.getParameter("name");
		String id=request.getParameter("id");
		String passwd=request.getParameter("passwd");
		

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"blogsvcmanager","blogsvcmanager");
			
			pstmt=conn.prepareStatement("INSERT INTO member VALUES (?,?,?)");
	  		pstmt.setString(1,name);  		
	  		pstmt.setString(2,id);
	  		pstmt.setString(3,passwd);
	  		
	  		int result=pstmt.executeUpdate();
	  		PrintWriter out = response.getWriter();
	  		
	  		if(result!=0){  			
	  			out.println("<script>");
	  		  	out.println("location.href='./index.jsp'");
	  		  	out.println("</script>");
	  		}else{
	  			out.println("<script>");
	  	  		out.println("location.href='./join.jsp'");
	  	  		out.println("</script>");	
	  		}
		}catch(Exception e){
			out.println("<h3>레코드 등록에 실패하였습니다.</h3>");
			e.printStackTrace();
	 	}
		/**
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.println("이름  = "+name + "<br>");
		out.println("아이디  = "+id + "<br>");
		out.println("비밀번호  = "+passwd + "<br>");
		*/
	}

}
