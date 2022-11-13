package com.IoTSystem.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.IoTSystem.Dao.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "Login", urlPatterns = { "/Login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memberId = request.getParameter("memberId");
		String memberPw = request.getParameter("memberPw");
			
		MemberDao dao =new MemberDao();
		String grade= dao.login(memberId, memberPw);
		System.out.println(grade);
		
		//model 요청결과를 받아서 응답을 위한 설정하기
	if(grade != null) {	
		
		HttpSession session= request.getSession(true);
		session.setAttribute("memberId", memberId);
		session.getAttribute(memberId);
		session.setAttribute("grade",grade);
		response.sendRedirect("main.jsp");

		return ;		
	}
	else { 
		request.setAttribute("message", "[실패] 로그인 정보가 올바르지 않습니다.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		
	}
		
	}

}
