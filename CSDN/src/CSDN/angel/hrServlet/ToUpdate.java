package CSDN.angel.hrServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.CompanyDao;
import CSDN.angel.model.User;
import CSDN.angel.model.company;

/**
 * Servlet implementation class ToUpdate
 */
@WebServlet("/ToUpdate")
public class ToUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		//System.out.println("businessname:"+name);
		//System.out.println("businesstype:"+type);
		CompanyDao dao=new CompanyDao();
		company com=dao.searchPositiony(name,type);
		request.setAttribute("com",com);
		request.getRequestDispatcher("positionUpdate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
