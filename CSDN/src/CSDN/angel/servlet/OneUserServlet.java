package CSDN.angel.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.UserDao;
import CSDN.angel.model.User;

/**
 * Servlet implementation class OneUserServlet
 */
@WebServlet("/OneUserServlet")
public class OneUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDao dao=new UserDao();
		User user=new User();
		String userName="熊大";
		user=dao.searchOneUser(userName);
		System.out.println("servlet username:"+userName);
		request.setAttribute("user", user);
		request.getRequestDispatcher("myresume.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
