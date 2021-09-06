<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>회원 정보 입력 폼</h2>
<form method="post" action="addresult.jsp">
	<table>
		<tr><td>이름 </td>
		<td><input type="text" name="name"></td>
		</tr>
		
		<tr><td>전화번호 </td>
		<td><input type="text" name="phone"></td>
		</tr>
		
		<tr><td>이메일 </td>
		<td><input type="text" name="email"></td>
		</tr>
		
		<tr><td>성별</td>
		<td><select name=s>
			<option>남</option>
			<option>여</option>
			</select>
		<tr>
		<td><input type="submit" value="확인"></td>
		<td><input type="reset" value="취소"></td>
		</tr>
	</table>
</form>
</body>
</html>