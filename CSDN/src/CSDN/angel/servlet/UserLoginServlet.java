package CSDN.angel.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import CSDN.angel.dao.UserDao;
import CSDN.angel.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String encoding = "";

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		encoding = config.getInitParameter("encoding");
		ServletContext application = config.getServletContext();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("username");
		String pass=request.getParameter("userpass");
		System.out.println(name);
		if(name!=null&&pass!=null){
			User user=new User();
			user.setUserName(name);
			user.setUserPass(pass);
			//数据库查询操作
			UserDao dao=new UserDao();
			if(dao.searchUser(user)){
				Cookie cook=new Cookie("username",name);
				Cookie cook1=new Cookie("userpass",pass);
				
				request.getSession().setAttribute("name",name);
				response.sendRedirect("jobshow.jsp");
			}else{
				request.setAttribute("error", "用户名或密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}
		else{
			response.setContentType("text/html;charset=UTF-8");
			request.setAttribute("error", "用户名或密码为空");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
