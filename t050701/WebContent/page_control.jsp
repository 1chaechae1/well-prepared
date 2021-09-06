<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>forward, sendRedirect 테스트</h2>
	<hr>
	<form method="POST" action="forward_action2.jsp">
		forward 액션 : <input type="text" name=username><input type="submit" value="확인">
	</form>
	
	<form method="POST" action="response_send.jsp">
		sendRedirect : <input type="text" name=username2><input type="submit" value="확인">
	</form>
</body>
</html>