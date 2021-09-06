package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParamServlet
 */
@WebServlet(description = "로그인창", urlPatterns = { "/ParamServlet" })
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html; charset=euc-kr");
		String name=request.getParameter("id");
		String password=request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head></head>");
		out.print("<body> 당신의 로그인을 입력하시오. <br>");
		out.print("아이디: "+name+"<br>");
		out.print("비밀번호: "+password+"<br>");
		out.print("<br> <a href='javascript:history.go(-1)'>다시 돌아가기</a>");
		out.print("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
