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
		<h2>out 참조 변수의 사용</h2>
		<hr>
		1. 설정된 버퍼크기: <%=out.getBufferSize() %><br>
		2. 남아 있는 버퍼크기: <%=out.getRemaining() %><br>
		<% out.flush(); %>
		
		3. flush 후 남아 있는 버퍼크기: <%=out.getRemaining() %><br>
		<%out.clear(); %> 
		4. clear 후 남아 있는 버퍼크기: <%=out.getRemaining() %><br>
		<%out.close(); %>  
		5. close 후 남아 있는 버퍼크기: <%=out.getRemaining() %><br> 
	</center>
</body>
</html>