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
 * Servlet implementation class testItemExtractionServlet
 */
@WebServlet(name = "testItemExtraction", urlPatterns = { "/testItemExtraction" })
public class testItemExtractionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testItemExtractionServlet() {
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
		IoTSystemDao dao=new IoTSystemDao();
		
		ArrayList<ArrayList> list= dao.t_test_value(product, IoT_function);
		
		T_Test service= new T_Test();
		String t_testValue= service.T_test_value(list); 
		
		Grade gradeService= new Grade();
		ArrayList<Double> total_t_value= dao.t_for_grade(product, IoT_function, t_testValue);
		String grade = gradeService.Grade_Cal(Double.parseDouble(t_testValue),total_t_value);
		
		String category_items= dao.category_test_items(product, IoT_function);
		
		ArrayList<String> list1= new ArrayList<String>();
		list1.add(category_items);
		list1.add(t_testValue);
		list1.add(grade);
	
		
		request.setAttribute("list1", list1);
		request.getRequestDispatcher("testitemextraction.jsp").forward(request, response);
		
		
	}

}
