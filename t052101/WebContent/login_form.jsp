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
		<h2>로그인</h2>
		<table border=1>
		<form action="login.jsp" method="POST">
		<tr>
		<td>아이디:</td>
		<td> <input type="text" name="id" size=10></td>
		</tr>
		<tr>
		<td>비밀번호:</td>
		<td> <input type="text" name="password" size=10></td>
		</tr>
		<tr>
		<td colspan=2><input type="submit" name="ok" value="로그인"></td>
		</tr>
		</table>
	</center>
</body>
</html>