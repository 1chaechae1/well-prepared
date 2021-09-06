<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>session 예제</h2>
	
		<%
			if(session.isNew()){
				out.println("<script>alert('세션이 해제되어 다시 설정합니다') </script>");
				session.setAttribute("login", "hong");
			}
		%>
		
		<%=session.getAttribute("login") %>님 환영합니다<br>
		1. 세션ID: <%=session.getId() %><br> 
		2. 세션 유지시간: <%=session.getMaxInactiveInterval() %><br>
	</center>

</body>
</html>