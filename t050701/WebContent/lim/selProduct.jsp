<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
	// HTML ������ ���޵� �������� �ѱ� ���ڵ�
	request.setCharacterEncoding("euc-kr"); 
	//���� ���� �� ����
	session.setAttribute("username", request.getParameter("username"));
%>
<body>
	<center>
		<hr>
		<%=session.getAttribute("username") %>�� �α��� �����Դϴ�.
		<hr>
		
		<form name="form1" method="POST" action="add.jsp">
			<select name="product">
			<option>���</option>
			<option>��</option>
			<option>���ξ���</option>
			<option>�ڸ�</option>
			<option>����</option>
			</select>
			<input type="submit" value="�߰�">
		</form>
		
		<a href="checkOut.jsp">���</a>
	</center>
</body>
</html>