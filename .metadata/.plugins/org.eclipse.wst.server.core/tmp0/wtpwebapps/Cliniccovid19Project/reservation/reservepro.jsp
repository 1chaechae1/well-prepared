<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.clinic.reservation.ReserveBean" %>
<%@ page import="com.clinic.reservation.ReserveDAO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
        // �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
		//��û�����κ��� �Ѿ�� ������ ����(�Ķ���Ͱ�)
		String[] regionnname = request.getParameterValues("regionnname");
		String cityyname = request.getParameter("cityyname");
		String[] clinicdateyy = request.getParameterValues("clinicdateyy");
		String[] clinicdatemm = request.getParameterValues("clinicdatemm");
		String[] clinicdatedd = request.getParameterValues("clinicdatedd");
		String cliniccname = request.getParameter("cliniccname");
		String[] symptom = request.getParameterValues("symptom");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
%>
    
    
<div id="wrap">
      <div id="contbody" class="clearfix">
        <div id="contentcore" class="contentcore">
          <h2 class="gnb6">����� ����Ȯ��</h2>
          <hr>
           <table>
                <tr>
                    <td id="title">����</td>
                    <td>
                    <%
                    // �迭�� �Ѱܹ��� ���� ó���ϱ� ���� for�� �̿�
                    for(String rg : regionnname){
                        out.println(rg);
                    }        
               		 %>
                    <%=cityyname %>  
                    </td>
                </tr>
                <tr>
                    <td id="title">���ᳯ¥</td>
                    <td>
                   <%
                    // �迭�� �Ѱܹ��� ���� ó���ϱ� ���� for�� �̿�
                    for(String yy : clinicdateyy){
                        out.println(yy);
                    }        
                %>��
                     <%
                    // �迭�� �Ѱܹ��� ���� ó���ϱ� ���� for�� �̿�
                    for(String mm : clinicdatemm){
                        out.println(mm);
                    }        
                %>��
                    <%
                    // �迭�� �Ѱܹ��� ���� ó���ϱ� ���� for�� �̿�
                    for(String dd : clinicdatedd){
                        out.println(dd);
                    }        
                %>��
                    </td>
               	</tr>
               	<tr>
                    <td id="title">����Ҹ�</td>
                    <td>
                       <%=cliniccname %>
                    </td>
                </tr>
                 <tr>
                    <td id="title">���� ����</td>
                    <td>
                    <%
                    // �迭�� �Ѱܹ��� ���� ó���ϱ� ���� for�� �̿�
                    for(String st : symptom){
                        out.println(st);
                    }        
               		 %>
                 
                    </td>
                </tr>
                <tr>
                    <td id="title">����</td>
                    <td>
                        <%=name %>
                    </td>
                </tr>
                
                <tr>
                    <td id="title">����ó</td>
                    <td>
                        <%=phone %>
                    </td>
                </tr>
			</table>
            
              <br>
              <input type="button" value="Ȯ��">

         
        </div>
      </div>
    </div>
</body>
</html>