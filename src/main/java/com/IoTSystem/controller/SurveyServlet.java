package com.IoTSystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;
import com.IoTSystem.Dao.MemberDao;

/**
 * Servlet implementation class SurveyServlet
 */
@WebServlet(name = "Survey", urlPatterns = { "/Survey" })
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String product = request.getParameter("product");
		String IoT_function = request.getParameter("IoT_function");
		int importance= Integer.parseInt(request.getParameter("importance"));
		int priority= Integer.parseInt(request.getParameter("priority"));
		int weight= Integer.parseInt(request.getParameter("weight"));
		String relation_IoT= request.getParameter("relation_IoT");
		String testMethod= request.getParameter("testMethod");
		
		IoTSystemDao dao =new IoTSystemDao();
		
		boolean survey_success= dao.survey(product,IoT_function,importance,priority,weight,relation_IoT,testMethod);
		
		if(survey_success) {
			response.sendRedirect("survey.jsp");
		}
	
	}

}
