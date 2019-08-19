package CSDN.angel.hrServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.CompanyDao;
import CSDN.angel.model.company;

/**
 * Servlet implementation class MyCompanyPositionSearcher
 */
@WebServlet("/MyCompanyPositionSearcher")
public class MyCompanyPositionSearcher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String businessName =request.getParameter("businessName");
		CompanyDao dao=new CompanyDao();
		String businessName="广州西洋汇信息技术有限公司";
		//company Company=new company();
				
		List<company> Companylist=dao.searchCompany(businessName);
		//System.out.println("hioca:"+businessName);
		request.setAttribute("business", Companylist);
		request.getRequestDispatcher("positionlist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
