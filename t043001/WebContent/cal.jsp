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
	//���� ����
	int num1, num2 = 0;
	int result = 0;
	String op = "";

	//�޼ҵ� ����
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

	//�������� post���� Ȯ�� �� ��û�� ���� �����ؾ� ��.
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
		<input type="submit" value="���" name="b1">
		<input type="reset" value="���" name="b2">
	</form>
	
	��� ����� <%=calc() %>
</center>
</body>
</html>