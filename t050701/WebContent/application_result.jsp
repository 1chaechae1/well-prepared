<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>application ����</h2>
	<hr>
	
	
	username �� ������ ����: <%=application.getAttribute("username") %><p>
	<%
		Integer count = (Integer)application.getAttribute("count");
		int cnt = count.intValue()+1;
		application.setAttribute("count", cnt);
	%>
	
	�湮�ڼ�: <%=cnt %>
</body>
</html>