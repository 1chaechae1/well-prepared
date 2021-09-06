<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="addr" class="com.web.AddrBean" scope="page"/>
<jsp:setProperty name="addr" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<center>
<h2>결과화면</h2>
이름: <jsp:getProperty name="addr" property="name"/> <br>
전화번호: <jsp:getProperty name="addr" property="phone"/> <br>
이메일: <jsp:getProperty name="addr" property="email"/> <br>
성별: <jsp:getProperty name="addr" property="s"/> <br>
</center>

</body>
</html>