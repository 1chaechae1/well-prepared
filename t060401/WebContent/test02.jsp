<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
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
	PreparedStatement pstmt = null;	//���� �����ϱ� ���� Ŭ����
	
	try{
		//����̹� ����
    	Class.forName(driver);
		//�������
    	conn=DriverManager.getConnection(url,id, pw); //�ڽ��� ���̵�� ��й�ȣ
    	out.println("��� ���� ����");
    	String sql="insert into test values(?,?)";
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, request.getParameter("username"));	//1�� ��
    	pstmt.setString(2, request.getParameter("email"));	//2�� ��
    	
    	if(request.getParameter("username")!=null){
    	pstmt.executeUpdate();	//insert, delete, update
    	}
    	//conn.close();
	}catch(Exception e){
		out.println("��� ���� ����");
		out.print(e.getMessage());
	}finally{
	}
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>������ ���</h2>
	<hr>
	<form method=post>
		����̸�: <input type="text" name=username>
		�̸���: <input type="text" name="email" size=20>
		<input type=submit value="���">
	</form>
	<hr>
	<%
	try{
		String sql="select username, email from test";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			out.print(rs.getString(1)+","+rs.getString(2)+"<br>");
		}
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		e.getStackTrace();
	}
		
	
	%>
</center>
</body>
</html>