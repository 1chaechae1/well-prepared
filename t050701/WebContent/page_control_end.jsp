<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>forward action 및 sendRedirect() 결과</h2>
	<hr>
	지금 보이는 화면은 page control end 에서 출력한 것.
	<hr>
	이름: <%=request.getParameter("username") %>
	<br>
	전화번호: <%=request.getParameter("tel") %>
</body>
</html>