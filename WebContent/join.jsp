<%@ page language="java" contentType="text/html; charset=EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">

<head>		
	<meta charset="EUC-KR">	
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
				<h1>ȸ������</h1>
				
				<form action="./join" method="post">
					<table>				
					  <tr>
							<td>�̸� :</td>
							<td> <input type="text" name="name"></td>	
						</tr>
						<tr>
							<td>���̵� :</td>
							<td><input type="text" name="id"></td>				
						</tr>
						<tr>
							<td>��й�ȣ :</td>
							<td><input type="text" name="passwd"></td>	
						</tr>
						<tr>					
							<td><input type="submit" value="ȸ������"/></td>
						</tr>
					</table>
					</form>
				
				
						
			</div>
			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>			
		</div>	
</body>
</html>