<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.Arraylist" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<% 
	request.setCharacterEncoding("euc-kr"); 
%>
</head>
<body>
	<center>
		<h2>계산</h2>
		선택한 상품 목록
		<hr>
		
		<%
			ArrayList list = (ArrayList)session.getAttribute("productlist");
			if(list == null){
				out.print("선택한 상품이 없습니다.");
			}
			else{
				for(Object pd : list){
					out.print(pd+"<br>");
				}
			}
		%>
	</center>
</body>
</html>