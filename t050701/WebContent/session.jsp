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
		<h2>session ����</h2>
	
		<%
			if(session.isNew()){
				out.println("<script>alert('������ �����Ǿ� �ٽ� �����մϴ�') </script>");
				session.setAttribute("login", "hong");
			}
		%>
		
		<%=session.getAttribute("login") %>�� ȯ���մϴ�<br>
		1. ����ID: <%=session.getId() %><br> 
		2. ���� �����ð�: <%=session.getMaxInactiveInterval() %><br>
	</center>

</body>
</html>