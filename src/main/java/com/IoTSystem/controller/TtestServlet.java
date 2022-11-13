package com.IoTSystem.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;
import com.IoTSystem.IoTSystemService.*;
/**
 * Servlet implementation class TtestServlet
 */
@WebServlet(name = "Ttest", urlPatterns = { "/Ttest" })
public class TtestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TtestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String product = request.getParameter("product");
		String IoT_function = request.getParameter("IoT_function");
		
		IoTSystemDao dao =new IoTSystemDao();
		ArrayList<ArrayList> list= dao.t_test_value(product, IoT_function);
		
		T_Test service= new T_Test();
		String t_testValue= service.T_test_value(list); 
		boolean check= dao.t_upsert(product, IoT_function, t_testValue);
		
		System.out.println("upsert check: "+check);
		
		request.setAttribute("t_testValue", t_testValue);
		
		request.getRequestDispatcher("t-test.jsp").forward(request, response);
	}

}
