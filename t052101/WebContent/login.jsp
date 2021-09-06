<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 자바빈즈 관련 태그 -->
<jsp:useBean id="login" class="com.web.LoginBean" scope="page"/>
<jsp:setProperty name="login" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 예제</h2>
<%
	//if(!login.checkUser()){
		//out.print("로그인 실패");
	//}else{
		//out.print("로그인 성공");
	//}
%>
<hr>
<h2>결과 화면</h2>
<jsp:getProperty property="id" name="login"/>
<jsp:getProperty property="password" name="login"/>

</body>
</html>