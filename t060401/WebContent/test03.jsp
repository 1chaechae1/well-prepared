<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%
	//디비 접속할 변수 만들기
	Connection conn=null;
	//드라이브 경로 설정
	String driver = "oracle.jdbc.driver.OracleDriver";
	//아이디
	String id="com";
	//패스워드
	String pw="1234";
	//디비계정 경로 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	//jdbc:mysql://localhost:3306/databasename?useSSL=false"
	PreparedStatement pstmt = null;//쿼리 실행하기 위한 클래스

	try{
		//드라이브 설정
    	Class.forName(driver);
    	//디비 접속
    	conn=DriverManager.getConnection(url,id,pw); //자신의 아이디와 비밀번호
    	out.println("디비 연동 성공");
    	String aql="insert into mem values(?,?,?)";
   		request.setCharacterEncoding("euc-kr");
    	pstmt = conn.prepareStatement("sql");
    	pstmt.setString(1, request.getParameter("username"));	//1번 열
    	pstmt.setInt(2, Integer.parseInt(request.getParameter("pwd")));	//2번 열
    	pstmt.setString(3, request.getParameter("email"));
    	if(request.getParameter("username")!=null){
    		pstmt.executeUpdate();//insert, delete, update
    	}
	}catch(Exception e) {
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
	<h2>회원가입</h2>
	<hr>
	<form method=post>
		등록이름 : <input type= "text" name=username>
		패스워드 : <input type="text" name=pwd>
		이메일 :  <input type="text" name=email size=20>
		<input type=submit value="회원가입">
	</form>
	<hr>

<%
	try{
    	String sql="select name, pwd, email from mem";
    	pstmt=conn.prepareStatement(sql);
   		ResultSet rs = pstmt.executeQuery();
    	out.print("<table border=1><tr><td>이름</td><td>비밀번호</td><td>이메일</td></tr>");
    
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