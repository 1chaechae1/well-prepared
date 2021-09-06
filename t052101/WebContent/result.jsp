<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="member" class="com.web.MemberBean" scope="page"/>
<jsp:setProperty name="member" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
이름 : <jsp:getProperty name="member" property="name"/> <br>
아이디 : <jsp:getProperty name="member" property="userid"/> <br>
별명 : <jsp:getProperty name="member" property="nickname"/> <br>
비밀번호 : <jsp:getProperty name="member" property="pwd"/> <br>
이메일 : <jsp:getProperty name="member" property="email"/> <br>
전화번호 : <jsp:getProperty name="member" property="phone"/> <br>

</body>
</html>