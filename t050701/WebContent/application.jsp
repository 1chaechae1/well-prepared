<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>application 예제</h2>
	<hr>
	1. 서버 정보: <%=application.getServerInfo() %><br>
	2. 서블릿API 버전 정보: <%=application.getMajorVersion()+"."+application.getMajorVersion() %><br>
	3. application.jsp 파일의 실제경로: <%= application.getRealPath("application.jsp") %><br> 
	
	<hr>
	
	setAttribute 로 'username'을 hong<p>
	<%
	
		application.setAttribute("username","hong"); 
		application.log("username=hong");
		application.setAttribute("count", 1);
		
	%>
	
	<a href="application_result.jsp">확인하기</a>
	
</body>
</html>