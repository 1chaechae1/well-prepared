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
		<h2>out ���� ������ ���</h2>
		<hr>
		1. ������ ����ũ��: <%=out.getBufferSize() %><br>
		2. ���� �ִ� ����ũ��: <%=out.getRemaining() %><br>
		<% out.flush(); %>
		
		3. flush �� ���� �ִ� ����ũ��: <%=out.getRemaining() %><br>
		<%out.clear(); %> 
		4. clear �� ���� �ִ� ����ũ��: <%=out.getRemaining() %><br>
		<%out.close(); %>  
		5. close �� ���� �ִ� ����ũ��: <%=out.getRemaining() %><br> 
	</center>
</body>
</html>