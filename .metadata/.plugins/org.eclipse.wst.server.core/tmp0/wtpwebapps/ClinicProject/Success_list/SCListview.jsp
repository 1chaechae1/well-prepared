<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.*"%>
    
    <%!// ���� ����
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "com";
	String pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "select * from TEST1";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		try {
		// �����ͺ��̽��� �����ϱ� ���� ����̹� SW �ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// �����ͺ��̽��� �����ϴ� �۾� ����
		conn = DriverManager.getConnection(url, uid, pwd);
		// ������ ���� ��ü ����
		stmt = conn.createStatement();
		// ���� ����
		rs = stmt.executeQuery(sql);
	%>
	<table border=1 width=100%>
		<thead>
		<tr>
			<th>������</th>
	   	 	<th>��üä�� ���ɿ���</th>
	    	<th>�õ�</th>
	    	<th>�ñ���</th>
	    	<th>�Ƿ�����</th>
	    	<th>�ּ�</th>
	    	<th>���� ��ð�</th>
	    	<th>����� ��ð�</th>
	    	<th>�Ͽ���/������ ��ð�</th>
	   	 	<th>��ȭ��ȣ</th>
		</tr>
		</thead>
	
	<%
		while (rs.next()) {
	%>
        <tr>
            <td><%= rs.getString("������") %></td>
            <td><%= rs.getString("PUBL") %></td>
            <td><%= rs.getString("AREA1") %></td>
            <td><%= rs.getString("AREA2") %></td>
            <td><%= rs.getString("NAME") %></td>
            <td><%= rs.getString("ADDR") %></td>
            <td><%= rs.getString("����_��ð�") %></td>
            <td><%= rs.getString("�����_��ð�") %></td>
            <td><%= rs.getString("�Ͽ��ϰ�����_��ð�") %></td>
            <td><%= rs.getString("TEL") %></td>
        </tr>
    <%
		}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		}
	%>

</table>
</body>
</html>