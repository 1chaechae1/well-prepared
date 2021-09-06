<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%! 
	//변수 선언
	int num1, num2 = 0;
	int result = 0;
	String op = "";

	//메소드 선언
	public int calc(){
		if(op.equals("+")){
			result = num1+num2;
		}else if(op.equals("-")){
			result=num1-num2;
		}else if(op.equals("*")){
			result=num1*num2;
		}else if(op.equals("/")){
			result=num1/num2;
		}
		return result;
	}
	
%>

<%

	//웹페이지 post인지 확인 후 요청한 것을 수행해야 함.
	if(request.getMethod().equals("POST")){
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		calc();
	}

%>
<center>
	<form name=form1 method=post>
		<input type="text" name="num1" width=200 size=5>
		<select name="operator">
			<option selected>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2" width=200 size=5>
		<br>
		<input type="submit" value="계산" name="b1">
		<input type="reset" value="취소" name="b2">
	</form>
	
	계산 결과값 <%=calc() %>
</center>
</body>
</html>