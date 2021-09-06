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
	
	try{
		//드라이버 설정
    	Class.forName(driver);
		//디비접속
    	conn=DriverManager.getConnection(url,id, pw); //자신의 아이디와 비밀번호
    	out.println("디비 연동 성공");
    	conn.close();
	}catch(Exception e){
		out.println("디비 연동 실패");
		out.print(e.getMessage());
	}finally{
	}
%>

</body>
</html>