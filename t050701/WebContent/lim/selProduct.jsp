<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
	// HTML 폼에서 전달된 데이터의 한글 인코딩
	request.setCharacterEncoding("euc-kr"); 
	//세션 정보 값 저장
	session.setAttribute("username", request.getParameter("username"));
%>
<body>
	<center>
		<hr>
		<%=session.getAttribute("username") %>님 로그인 상태입니다.
		<hr>
		
		<form name="form1" method="POST" action="add.jsp">
			<select name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
			</select>
			<input type="submit" value="추가">
		</form>
		
		<a href="checkOut.jsp">계산</a>
	</center>
</body>
</html>