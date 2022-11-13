package com.IoTSystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;

/**
 * Servlet implementation class commonOrVariableServlet
 */
@WebServlet(name = "commonOrVariable", urlPatterns = { "/commonOrVariable" })
public class commonOrVariableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public commonOrVariableServlet() {
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
		IoTSystemDao dao =new IoTSystemDao();
		String item= dao.category_test_items(product, IoT_function);
	
		  	request.setAttribute("item",item);
		request.getRequestDispatcher("commonvariablecheck.jsp").forward(request, response);
		 
	}

}
