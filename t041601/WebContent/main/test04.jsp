<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
//배열이나 메소드, 변수 선언
Date date = new Date();
Date getDate(){
	return date;
}
%>


<%=getDate() %> <%--표현식에는 세미콜론 붙이면 안된다. --%>
<br>
<%=request.getRemoteAddr() %>
</body>
</html>