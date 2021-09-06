<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
	//��� ������ ���� �����
	Connection conn=null;
	//����̺� ��� ����
	String driver = "oracle.jdbc.driver.OracleDriver";
	//���̵�
	String id="com";
	//�н�����
	String pw="1234";
	//������ ��� ����
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//jdbc:mysql://localhost:3306/databasename?useSSL=false"
	PreparedStatement pstmt = null;//���� �����ϱ� ���� Ŭ����

	try{
		//����̺� ����
    	Class.forName(driver);
    	//��� ����
    	conn=DriverManager.getConnection(url,id,pw); //�ڽ��� ���̵�� ��й�ȣ
    	out.println("��� ���� ����");
    	String aql="insert into mem values(?,?,?)";
   		request.setCharacterEncoding("euc-kr");
    	pstmt = conn.prepareStatement("sql");
    	pstmt.setString(1, request.getParameter("username"));	//1�� ��
    	pstmt.setInt(2, Integer.parseInt(request.getParameter("pwd")));	//2�� ��
    	pstmt.setString(3, request.getParameter("email"));
    	if(request.getParameter("username")!=null){
    		pstmt.executeUpdate();//insert, delete, update
    	}
	}catch(Exception e) {
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
	<h2>ȸ������</h2>
	<hr>
	<form method=post>
		����̸� : <input type= "text" name=username>
		�н����� : <input type="text" name=pwd>
		�̸��� :  <input type="text" name=email size=20>
		<input type=submit value="ȸ������">
	</form>
	<hr>

<%
	try{
    	String sql="select name, pwd, email from mem";
    	pstmt=conn.prepareStatement(sql);
   		ResultSet rs = pstmt.executeQuery();
    	out.print("<table border=1><tr><td>�̸�</td><td>��й�ȣ</td><td>�̸���</td></tr>");
    
  		while(rs.next()){
	  
	  	out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getInt(2)+
			  "</td><td>"+rs.getString(3)+"</td><tr>");
  
	  	out.print(rs.getString(1)+","+rs.getInt(2)+","+rs.getString(3)+"<br>");
  	}
  	out.print("</table>");
  	rs.close();
  	pstmt.close();
  	conn.close();
	}catch(Exception e){
    	e.printStackTrace();
	}

%>
</center>
</body>
</html>