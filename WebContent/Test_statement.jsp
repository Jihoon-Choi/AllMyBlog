<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
 	Connection conn = null; 
 	
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
				"blogsvcmanager","blogsvcmanager");
		
  		Statement stmt=conn.createStatement();
  		
  		int result=stmt.executeUpdate("INSERT INTO member(id,pw) VALUES ('admin','admin')");
  		if(result!=0){
  			out.println("<h3>���ڵ尡 ��ϵǾ����ϴ�.</h3>");
		}
	}catch(Exception e){
		out.println("<h3>���ڵ� ��Ͽ� �����Ͽ����ϴ�.</h3>");
		e.printStackTrace();
 	}
%>
