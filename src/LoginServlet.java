

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		LoginBiz loginBiz = new LoginBiz();
		User user = loginBiz.getUserLogin(id,passwd);
		if(user != null){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			RequestDispatcher dispatcher 
					= request.getRequestDispatcher("userblog.jsp");
			dispatcher.forward(request, response);
		
		/**
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		response.setContentType("text/html;charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		
		out.println("아이디="+id + "<br>");
		out.println("비밀번호="+passwd + "<br>"); */
	}

}
