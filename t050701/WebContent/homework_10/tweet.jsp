<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html>
<%
	// �ѱ� ĳ���ͼ� ��ȯ
	request.setCharacterEncoding("euc-kr");
	
	// HTML ������ ���޵� msg ���� ������ ��
	String msg = request.getParameter("msg");
	
	// ���ǿ� ����� �α��� ����� �̸��� ������ ��
	Object username = session.getAttribute("user");
	
	// �޽��� ������ ���� application ���� msgs �� ����� ArrayList ������ ��
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	//null �� ��� ���ο� ArrayList ��ü�� ����
	if(msgs == null){
		msgs = new ArrayList<String>();
		// application �� ArrayList ����
		application.setAttribute("msgs",msgs);
	}
	
	// ����� �̸�, �޽���, ��¥ ������ �����Ͽ� ArrayList�� �߰�
	msgs.add(username+" :: "+msg+" , "+ new java.util.Date());
	
	// ��Ĺ �ܼ��� ���� �α�
	application.log(msg+"�߰���");
	
	// ��� ȭ������ �����̷���
	response.sendRedirect("twitter_list.jsp");
	%>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

</body>
</html>