<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	//��� ������ ���� �����
	Connection conn=null;
	//����̹� ��� ����
	String driver = "oracle.jdbc.driver.OracleDriver";
	//���̵� 
	String id="com";
	//�н�����
	String pw = "1234";
	//������ ��� ����
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//jdbc:mysql://localhost:3306/
	
	try{
		//����̹� ����
    	Class.forName(driver);
		//�������
    	conn=DriverManager.getConnection(url,id, pw); //�ڽ��� ���̵�� ��й�ȣ
    	out.println("��� ���� ����");
    	conn.close();
	}catch(Exception e){
		out.println("��� ���� ����");
		out.print(e.getMessage());
	}finally{
	}
%>

</body>
</html>