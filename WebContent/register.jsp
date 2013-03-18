<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="euc-kr" import="java.util.*" import="java.sql.*"
errorPage="DBError.jsp" %>


<!DOCTYPE html>
<html lang="ko">

<head>
	<%request.setCharacterEncoding("utf-8");%>	
	<meta charset="utf-8">	
	<title>All My Blog</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>	
</head>
	
<body>
	
		<div id="siteWrap">
			<div id="header">
				<a href="./login2.jsp"><input type="button" value="Login" style="width:100px"></a>
				<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>						
			</div>
			
			<div id="contents_main">
				<div id="contentsWrap_a_p">
			<form action="./signup_prof_db.jsp" method="post">
				<table>
					<tr>
					<td>ID</td>
					<td><input type="text" name="email">  </td>
					</tr>
					<tr>
					<td>Password</td>
					<td><input type="text" name="passwd">  </td>
					</tr>
					<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
					</tr>
					<tr>
										
				</table>
				<input type="submit" value="가입완료">
			</form>
			
		</div>		
			</div>
			
			<div id="footer">			
				
			</div>			
		</div>	
</body>
</html>