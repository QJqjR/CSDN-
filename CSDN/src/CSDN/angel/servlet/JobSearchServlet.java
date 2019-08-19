package CSDN.angel.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.JobDao;
import CSDN.angel.model.Job;

/**
 * Servlet implementation class JobSearchServlet
 */
@WebServlet("/JobSearchServlet")
public class JobSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String newCurrentPage =request.getParameter("currentPage");
		JobDao dao=new JobDao();

		int num=10;
		int total=dao.getJobNum();
		//System.out.println("总页数："+total);
		int totalPage=total%num>0?total/num+1:total/num;
		int currentPage=1;
		if(newCurrentPage!=null){
			currentPage=Integer.parseInt(newCurrentPage);
		}
		if(currentPage<1){
			currentPage=1;
		}
		if(currentPage>totalPage){
			currentPage=totalPage;
		}
		int start=(currentPage-1)*num;
		int end=num;
		//System.out.println("currentPage"+currentPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		List<Job> joblist=dao.searchJobsByPage(start,end);
		request.setAttribute("jobList", joblist);
		request.getRequestDispatcher("jobshow.jsp").forward(request, response);		
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
