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
		<h2>���</h2>
		������ ��ǰ ���
		<hr>
		
		<%
			ArrayList list = (ArrayList)session.getAttribute("productlist");
			if(list == null){
				out.print("������ ��ǰ�� �����ϴ�.");
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