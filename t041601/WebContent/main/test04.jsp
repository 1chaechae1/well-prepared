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
//�迭�̳� �޼ҵ�, ���� ����
Date date = new Date();
Date getDate(){
	return date;
}
%>


<%=getDate() %> <%--ǥ���Ŀ��� �����ݷ� ���̸� �ȵȴ�. --%>
<br>
<%=request.getRemoteAddr() %>
</body>
</html>