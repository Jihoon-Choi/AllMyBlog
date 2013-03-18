<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	String id=request.getParameter("id");
	String pass=request.getParameter("passwd");
	
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
				"blogsvcmanager","blogsvcmanager");
  		
  		pstmt=conn.prepareStatement("SELECT * FROM member WHERE id=?");
  		pstmt.setString(1,id);
  		rs=pstmt.executeQuery();
  		
  		if(rs.next()){
  			if(pass.equals(rs.getString("passwd"))){
  				session.setAttribute("id",id);
  				
  				out.println("<script>");
  		  		out.println("location.href='./userblog.jsp'");
  		  		out.println("</script>");
  			}
  		}
  		
  		out.println("<script>");
  		out.println("location.href='./index.jsp'");
  		out.println("</script>");
	}catch(Exception e){
		e.printStackTrace();
 	}
%>
