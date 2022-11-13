package com.IoTSystem.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.IoTSystem.Dao.IoTSystemDao;
import com.IoTSystem.Dto.IoTSystemDto;

/**
 * Servlet implementation class CommonVariableSortServlet
 */
@WebServlet(name = "CommonVariableSort", urlPatterns = { "/CommonVariableSort" })
public class CommonVariableSortServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonVariableSortServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String product = request.getParameter("product");
		String IoT_function = request.getParameter("IoT_function");
		String property= request.getParameter("property");
		String action= request.getParameter("action");
		String interface_relationship= request.getParameter("interface");
		String relation_IoT= request.getParameter("relation_IoT");
		String independence = request.getParameter("independence");
		String commonOrVariable="";
		IoTSystemDao dao =new IoTSystemDao();
		if(relation_IoT.equals("yes")) { 
			 commonOrVariable= dao.commonVariableSort(property,action,interface_relationship,independence,"common", product, IoT_function);
		}
		else if(independence.equals("yes")){
		 commonOrVariable= dao.commonVariableSort(property,action,interface_relationship,independence,"variable", product, IoT_function);
		}
	
		request.setAttribute("commonOrVariable", commonOrVariable);
		request.getRequestDispatcher("commonvariablesort.jsp").forward(request, response);
	}

}
