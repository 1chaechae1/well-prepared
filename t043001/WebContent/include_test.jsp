<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>include 지시어 테스트</h2>
<hr>
<center><%@ include file="menu.jsp" %></center>
<p>
	<table align=center width=500>
		<tr>
			<td align=left width=300><font size=2><%@include file="news.jsp" %></font></td>
			<td align=center><font size=2><%@include file="shopping.jsp" %></font></td>
		</tr>
	</table>
</p>
</body>
</html>