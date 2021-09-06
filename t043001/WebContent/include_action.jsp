<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2> include action 태그</h2>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="email" value="chq1126@naver.com"/>
		<jsp:param name="tel" value="010-4746-1189"/>
	</jsp:include>
</body>
</html>