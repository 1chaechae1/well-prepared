<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=request.getParameter("email") %> <br>
<%=request.getParameter("tel") %> <br>

<% out.print(request.getParameter("tel")); %>
<hr>
</body>
</html>