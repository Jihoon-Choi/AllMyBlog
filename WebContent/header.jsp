<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>All My Blog</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
</head>

<body>

			<div id="header_top">			
<%
  session = request.getSession(true);
  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
  {

   %>
   <input type="button" name="input" value="Log-out" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
   <%
  }else{
   %>
   <%
  }
 %>
				<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.jpg" width="170px" height="90px"></a>
			</div>					
				
			

</body>
</html>