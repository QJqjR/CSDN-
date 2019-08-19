package CSDN.angel.hrServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.CompanyDao;

/**
 * Servlet implementation class PositionUpdateServlet
 */
@WebServlet("/PositionUpdateServlet")
public class PositionUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("businessname");
		String type=request.getParameter("businesstype");
		String num=request.getParameter("businessnum");
		String salary=request.getParameter("businesssalary");
		String time=request.getParameter("datemin");
		String education=request.getParameter("businesseducation");
		String adress=request.getParameter("businessadress");
		int i=Integer.parseInt(num);
		
		CompanyDao dao=new CompanyDao();
		if(dao.updatePosition(name,type,i,time,education,adress,salary)){
			request.setAttribute("msg", "修改成功！");
			request.getRequestDispatcher("positionlist.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
