<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<%
	//디비 접속할 변수 만들기
	Connection conn=null;
	//드라이버 경로 설정
	String driver = "oracle.jdbc.driver.OracleDriver";
	//아이디 
	String id="com";
	//패스워드
	String pw = "1234";
	//디비계정 경로 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//jdbc:mysql://localhost:3306/
	PreparedStatement pstmt = null;	//쿼리 실행하기 위한 클래스
	
	try{
		//드라이버 설정
    	Class.forName(driver);
		//디비접속
    	conn=DriverManager.getConnection(url,id, pw); //자신의 아이디와 비밀번호
    	out.println("디비 연동 성공");
    	String sql="insert into test values(?,?)";
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, request.getParameter("username"));	//1번 열
    	pstmt.setString(2, request.getParameter("email"));	//2번 열
    	
    	if(request.getParameter("username")!=null){
    	pstmt.executeUpdate();	//insert, delete, update
    	}
    	//conn.close();
	}catch(Exception e){
		out.println("디비 연동 실패");
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
	<h2>데이터 등록</h2>
	<hr>
	<form method=post>
		등록이름: <input type="text" name=username>
		이메일: <input type="text" name="email" size=20>
		<input type=submit value="등록">
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