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
	
	
	username 에 설정된 값은: <%=application.getAttribute("username") %><p>
	<%
		Integer count = (Integer)application.getAttribute("count");
		int cnt = count.intValue()+1;
		application.setAttribute("count", cnt);
	%>
	
	방문자수: <%=cnt %>
</body>
</html>