<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<% 
	// �ѱ� ĳ���ͼ� ��ȯ
	request.setCharacterEncoding("euc-kr");
	// HTML ������ username���� ���޵� ���� ������ ��
	String username = request.getParameter("username");
	
	// username�� null �� �ƴ� ��� ���ǿ� ���� ����
	if(username != null){
		session.setAttribute("user",username);
	}
%>
<html>
<head>
<title>ch06 : twitter_list.jsp</title>
</head>
<body>
<div align=center>
<H3>My Simple Twitter!!</H3>
<HR>
<form action="tweet.jsp" method="POST">
	<!-- ���ǿ� ����� �̸� ��� -->
	@<%=session.getAttribute("user") %> <input type="text" name="msg">
	<input type="submit" value="Tweet">
</form>
<HR>
<div align="left">
<UL>
<%
	// application ���尴ü�� ���� msgs �̸����� ����� ArrayList�� ������ ��
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	// msgs�� null �� �ƴ� ��쿡�� ��� ���
	if(msgs != null){
		for(String msg : msgs){
			out.println("<LI>"+msg+"</LI>");
		}
	}
%>
</UL>
</div>
</div>
</body>
</html>