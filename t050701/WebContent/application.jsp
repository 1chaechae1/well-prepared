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
	1. ���� ����: <%=application.getServerInfo() %><br>
	2. ����API ���� ����: <%=application.getMajorVersion()+"."+application.getMajorVersion() %><br>
	3. application.jsp ������ �������: <%= application.getRealPath("application.jsp") %><br> 
	
	<hr>
	
	setAttribute �� 'username'�� hong<p>
	<%
	
		application.setAttribute("username","hong"); 
		application.log("username=hong");
		application.setAttribute("count", 1);
		
	%>
	
	<a href="application_result.jsp">Ȯ���ϱ�</a>
	
</body>
</html>