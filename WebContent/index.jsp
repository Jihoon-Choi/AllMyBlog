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
							
			</div>
			
			<div id="contents_main">
				<img src="./img/logo.jpg" style="width:300px"><br/>
				
				<h1>�α���</h1>
				<form action="loginp.jsp" method="post">
					���̵� : <input type="text" name="id"/><br>
					��й�ȣ : <input type="password" name="passwd"><br>
					<a href="./login.jsp"><input type="submit" class="btn btn-primary" name="input" value="Log-in" style="width:100px"></a>
				</form>
				
				
				
				<a href="./join.jsp">ȸ������</a>
				
			</div>
			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>			
		</div>	
</body>
</html>