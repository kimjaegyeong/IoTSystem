package com.IoTSystem.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;
import com.IoTSystem.IoTSystemService.Grade;
import com.IoTSystem.IoTSystemService.T_Test;

/**
 * Servlet implementation class TestitemcheckServlet
 */
@WebServlet(name = "Testitemcheck", urlPatterns = { "/Testitemcheck" })
public class TestitemcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestitemcheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String product = request.getParameter("product");
		String IoT_function = request.getParameter("IoT_function");
		
		IoTSystemDao dao=new IoTSystemDao();
		
		ArrayList<ArrayList> list= dao.t_test_value(product, IoT_function);
		
		T_Test service= new T_Test();
		String t_testValue= service.T_test_value(list); 
		
		Grade gradeService= new Grade();
		ArrayList<Double> total_t_value= dao.t_for_grade(product, IoT_function, t_testValue);
		String grade = gradeService.Grade_Cal(Double.parseDouble(t_testValue),total_t_value);
			
		String test_method= dao.test_method(product, IoT_function);
		if(test_method==null) {
			test_method="없음";
		}
		
		ArrayList<String> list1= new ArrayList<String>();
		list1.add(t_testValue);
		list1.add(grade);
		list1.add(test_method);
	
		request.setAttribute("list1",list1);
		request.getRequestDispatcher("Testitemcheck.jsp").forward(request, response);
		
		
	}

}
