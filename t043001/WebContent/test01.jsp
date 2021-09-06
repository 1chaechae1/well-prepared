<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		for(int i=1;i<10;i++)
			out.print(i+"<br>");
	%>
	
	<%! int j=1; %>
	<%
		for(int j=1;j<10;j++)
	%>
	<%= j %> <br>
</body>
</html>

//스크립트릿, 선언문, 표현식, 액션 태그...

//내장 객체 request, response, pagecontext, session, out, config, page, exception