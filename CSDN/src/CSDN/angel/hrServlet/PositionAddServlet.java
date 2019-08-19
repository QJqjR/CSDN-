package CSDN.angel.hrServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CSDN.angel.dao.CompanyDao;
import CSDN.angel.model.company;

/**
 * Servlet implementation class PositionAddServlet
 */
@WebServlet("/PositionAddServlet")
public class PositionAddServlet extends HttpServlet {
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
		System.out.println("num:"+num);
		if (name.equals("") || type.equals("")|| salary.equals("") || time.equals("") || education.equals("") || adress.equals("")) {
			request.setAttribute("msg", "请输入完整的招聘信息！");
			request.getRequestDispatcher("positionadd.jsp").forward(request, response);
		}
		
		HttpSession session = request.getSession();
		ServletContext sc = session.getServletContext();
		String logo="http://job.csdn.net/Content/csdnjob/images/%e4%b8%96%e9%82%a6.jpg";
		company Company=new company();
		CompanyDao companydao=new CompanyDao();
		boolean flag=false;
		flag = companydao.searchPositionInCompany(Company);
		request.setAttribute("com", Company);
		System.out.println("name:"+Company.getBusinessAdress());
		System.out.println("vjdadhiwh");
		if(!flag){
			CompanyDao com=new CompanyDao();
			boolean f = com.addPosition(name,type,i,time,education,adress,logo,salary);
			if (f) {
				request.setAttribute("msg", "添加成功！");
				request.getRequestDispatcher("positionlist.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("msg", "此职位正在该职位招聘中，请确认后重新输入！");
			request.getRequestDispatcher("positionadd.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
