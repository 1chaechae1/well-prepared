<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<span><a href ="<%=request.getContextPath() %>/sctest/Search_Center_tsc.jsp">�ӽü��������</a></span>
<h2>��������� ���</h2>
<table width="100%" border="1">
  <tr align="center">
  <td>�õ�</td>
  <td>�ñ���</td>
  <td>�Ƿ�����</td>
  <td>�ּ�</td>
  <td>���� ��ð�</td>
  <td>����� ��ð�</td>
  <td>�Ͽ��� ��ð�</td>
  <td>������ ��ð�</td>
  <td>��ǥ ��ȭ��ȣ</td>
  </tr>
  <%
  request.setCharacterEncoding("EUC-KR");
  Connection conn=null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;
  
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String sk = request.getParameter("sk");
  String sv = request.getParameter("sv");
  
  
  try {
	  	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uid = "com";
		String pwd = "1234";
		conn = DriverManager.getConnection(url, uid, pwd);
		if(sk==null & sv==null){
			
			pstmt = conn.prepareStatement("select * from SCLIST");
		}else if(sk != null & sv.equals("")){
			
			pstmt = conn.prepareStatement("select * from SCLIST");
		}else if(sk != null & sv != null){
			
			if(sk.equals("region")){
				pstmt = conn.prepareStatement("select * from SCLIST where region=?");
			}else if(sk.equals("city")){
				pstmt = conn.prepareStatement("select * from SCLIST where city=?");
			}else if(sk.equals("clname")){
				pstmt = conn.prepareStatement("select * from SCLIST where clname=?");
			}
			pstmt.setString(1, sv); 
		}
		
		rs=pstmt.executeQuery();
		
		while(rs.next()){
	%>	
		<tr>
		<td><%=rs.getString("region") %></td>
		<td><%=rs.getString("city") %></td>
		<td><%=rs.getString("clname") %></td>
		<td><%=rs.getString("addr") %></td>
		<td><%=rs.getString("wkt") %></td>
		<td><%=rs.getString("sat") %></td>
		<td><%=rs.getString("sun") %></td>
		<td><%=rs.getString("hol") %></td>
		<td><%=rs.getString("tel") %></td>
		</tr>
	<%
		}
  }catch(SQLException e) {
	  out.println(e.getMessage());
	  e.printStackTrace();
  }finally{
	  if(rs != null) try {rs.close(); } catch(SQLException e){}
	  if(pstmt != null) try {pstmt.close(); } catch(SQLException e){}
	  if(conn != null) try {conn.close(); } catch(SQLException e){}
  }
  %>
</table>
</body>
</html>