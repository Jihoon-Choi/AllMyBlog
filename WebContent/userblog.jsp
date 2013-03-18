<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
	String id=null;

	if (session.getAttribute("id")!=null){
		id=(String)session.getAttribute("id");
	}else{
		out.println("<script>");
		out.println("location.href='loginForm.jsp'");
		out.println("</script>");
	}
%>
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
				<h3><%=id %> 로 로그인하셨습니다.</h3>
				<%if(id.equals("admin")){%>
				<a href="member_list.jsp">관리자모드 접속(회원 목록 보기)</a>
				<%}%>
				
			</div>
			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>			
		</div>	
</body>
</html>