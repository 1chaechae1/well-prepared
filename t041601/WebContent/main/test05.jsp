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
	double r=Math.random();

	if(r>0.6){

		out.print("<h2 style='color:pink'> ������ ���� ��</h2>");
		out.print(r); 
	} else{
%>
		<h2 style="color:gray"> ������ ���� ��</h2> <%=r %>
<% } %>
<a href="test05.jsp">�ٽ� ���ư���</a>
</body>
</html>