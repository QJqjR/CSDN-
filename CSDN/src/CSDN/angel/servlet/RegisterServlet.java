package CSDN.angel.servlet;

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

import CSDN.angel.dao.UserDao;
import CSDN.angel.model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("username");
		String pass = request.getParameter("userpass");
		String qq = request.getParameter("qq");
		String tel =request.getParameter("telephone");
		System.out.println("name:"+name);
		System.out.println("pass:"+name);
		if (name.equals("") || pass.equals("")) {
			request.setAttribute("msg", "用户名或密码为空！");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}

		HttpSession session = request.getSession();
		ServletContext sc = session.getServletContext();
		UserDao userdao = new UserDao();
		List<User> list = new ArrayList<>();
		boolean flag=true;
		list = userdao.searchUsers();
		
		for(User u:list) {
			if(name.equals(u.getUserName())) {
				flag=false;
				break;
			}
		}
		if(flag){
			UserDao ud = new UserDao();
			boolean f = ud.addUser(name, pass,qq,tel);
			if (f) {
				request.setAttribute("msg", "注册成功！");
				request.getRequestDispatcher("jobshow.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("msg", "用户名已存在，请重新输入！");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}
}
