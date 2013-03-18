<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
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
%>
