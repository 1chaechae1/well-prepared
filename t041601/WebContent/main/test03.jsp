<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border=1>
	<%
		int ii=3;
		for(int i=0;i<ii;i++){
	%>
		<tr>
		<td><%=i %></td>
		</tr>
	<% } %>
	</table>
</body>
</html>