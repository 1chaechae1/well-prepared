<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.Arraylist" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>add.jsp</title>
<% 
	request.setCharacterEncoding("euc-kr"); 
%>
</head>
<body>
<%
	String productname=request.getParameter("product");
	ArrayList list = (ArrayList)session.getAttribute("productlist");
	if(list == null) {
		list = new ArrayList();
		session.setAttribute("productlist",list);
	}
	list.add(productname);
%>

<script>
	alert("<%=productname%>이 추가되었습니다.");
	history.go(-1);
</script>
</body>
</html>