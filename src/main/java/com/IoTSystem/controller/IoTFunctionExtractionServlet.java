package com.IoTSystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import com.IoTSystem.Dao.IoTSystemDao;
import com.IoTSystem.Dao.MemberDao;

/**
 * Servlet implementation class IoTFunctionExtractionServlet
 */
@WebServlet(name = "IoTFunctionExtraction", urlPatterns = { "/IoTFunctionExtraction" })
public class IoTFunctionExtractionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IoTFunctionExtractionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
	
		String product = request.getParameter("product");

		IoTSystemDao dao =new IoTSystemDao();
		ArrayList<String> list= dao.IoTFunctionExtraction(product);
	
		request.setAttribute("list", list);
		request.getRequestDispatcher("IoTFunctionextraction.jsp").forward(request, response);
		
	}

}
