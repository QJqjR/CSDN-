package CSDN.angel.hrServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.CompanyDao;
import CSDN.angel.model.company;

/**
 * Servlet implementation class PositionDelServlet
 */
@WebServlet("/PositionDelServlet")
public class PositionDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		System.out.println("name:"+name);
		System.out.println("type:"+type);
		CompanyDao dao=new CompanyDao();
		request.getRequestDispatcher("positionlist.jsp").forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
