package com.IoTSystem.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

/**
 * Servlet implementation class AnalysisServlet
 */
@WebServlet(name = "Analysis", urlPatterns = { "/Analysis" })
public class AnalysisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnalysisServlet() {
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
		String importacne_avg="";
		String priority_avg="";
		String weight_avg="";

		IoTSystemDao dao =new IoTSystemDao();
		ArrayList<String> list= dao.analysis(product, IoT_function);
		
		/*System.out.println(list.get(0)+" "+list.get(1)+" "+list.get(2));
		*/
		
		request.setAttribute("list",list);
		request.getRequestDispatcher("statisticsanalysis.jsp").forward(request, response);
		
	}

}
