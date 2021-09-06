<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch06 : request_result.jsp</title>
</head>
<body>
	<center>
	<H2>request �׽�Ʈ ��� - 1</H2>
	
	<HR>
	
	<table border=1 cellspacing="1" cellpadding="5">
	<tr>
		<td>�̸�</td>
		<td><%=request.getParameter("username")%> </td>
	</tr>
	
	<tr>
		<td>����</td>
		<td><%=request.getParameter("job")%></td>
	</tr>
	<tr>
		<td>���ɺо�</td>
		<td>
		<%
			String favorites[] = request.getParameterValues("favorite");
			
			for (String favorite: favorites) {
				out.println(favorite+"<br>");
			}
		%>
		</td>
	</tr>
	</table>
	<hr>
	<H2>request �׽�Ʈ ��� - 2</H2>
	<table border=0>
		<tr>
			<td>1. Ŭ���̾�Ʈ IP �ּ� :</td><td><%= request.getRemoteAddr() %></td>
		</tr>
		<tr>
			<td>2. ��û �޼��� :</td><td><%= request.getMethod() %></td>
		</tr>
		<% Cookie cookie[] = request.getCookies(); %>
		<tr>
			<td>3. <%=cookie[0].getName() %> �� ������ ��Ű�� :</td>
			<td><%=cookie[0].getValue() %></td>
		</tr>
		<tr>
			<td>4. �������� :</td>
			<td><%= request.getProtocol() %></td>
		</tr>
	</table>
	</center>
</body>
</html>