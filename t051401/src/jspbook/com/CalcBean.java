package jspbook.com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcBean
 */
@WebServlet(asyncSupported = true, description = "calculator", urlPatterns = { "/CalcBean" })
public class CalcBean extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalcBean() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//계산기 프로그램 코드
		int num1, num2;
		int result=0;
		String op;
		
		//클라이언트 응답시 한글처리
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");
		
		num1=Integer.parseInt(request.getParameter("num1"));
		num2=Integer.parseInt(request.getParameter("num2"));
		op = request.getParameter("operator");
		
		//결과 출력
		PrintWriter out = response.getWriter();
		result = clac(num1, num2, op);
		
		out.println("<html>");
		out.println("<head></head><body>");
		out.println("<h2>계산결과</h2>");
		out.println("<hr>");
		out.println(num1+op+num2+"="+result);
		out.println("</body></html>");
	}

	private int clac(int num1, int num2, String op) {
		int result = 0;
		
		if(op.equals("+")) {
			result = num1+num2;
		}else if(op.equals("-")) {
			result = num1-num2;
		}else if(op.equals("*")) {
			result = num1*num2;
		}else if(op.equals("/")) {
			result = num1/num2;
		}
		return result;
	}

}
