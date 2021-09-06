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
	<form name="form1" method="POST" action="/t051401/CalcBean">
		<input type="text" name="num1" width=200 size=5>
		<select name="operator">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
		</select>
		
		<input type="text" name="num2" width=200 size=5>
		<input type="submit" value="계산">
		<input type="reset" value="취소">
	</form>
	
	<hr>
	계산 결과:
</center>
</body>
</html>