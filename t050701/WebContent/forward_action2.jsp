<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("euc-kr"); %>
	
	<jsp:forward page="page_control_end.jsp">
		<jsp:param name="tel" value="000-000-0000"/>
	</jsp:forward>
</body>
</html>