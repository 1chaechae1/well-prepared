<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%
  request.setCharacterEncoding("EUC-KR");
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<h2>�ӽü�������� ã��</h2>
<hr>
	<form action="<%=request.getContextPath() %>/sctest/viewlist_tsc.jsp" method="POST">
		<select name="sk">
			<option value="total">��ü</option>
			<option value="region">�õ���</option>
			<option value="city">�ñ�����</option>
		</select>
		<input type="text" name="sv">
		<input type="submit" value="�˻�">
	</form>
</center>

</body>
</html>