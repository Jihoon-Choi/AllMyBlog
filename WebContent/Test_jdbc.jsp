<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;	
	
	Boolean connect=false;
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
				"blogsvcmanager","blogsvcmanager");
		
		connect=true;
		
		conn.close();
	}catch(Exception e){
		connect=false;
		e.printStackTrace();
	}
%>
<html>
<head>
<title>JDBC ���� �׽�Ʈ ����</title>
</head>
<body>
<h3>
<%if(connect==true){ %>
	����Ǿ����ϴ�.
<%}else{ %>
	���ῡ �����Ͽ����ϴ�.
<%} %>
</h3>
</body>
</html>
