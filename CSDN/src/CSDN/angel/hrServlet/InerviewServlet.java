package CSDN.angel.hrServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

/**
 * Servlet implementation class InerviewServlet
 */
@WebServlet("/InerviewServlet")
public class InerviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	private void SendEmail(String email) {
		HtmlEmail send = new HtmlEmail();
		try {
			send.setHostName("smtp.qq.com");
			send.setSmtpPort(465);// 端口号
			send.setSSLOnConnect(true);// 开启SSL加密
			send.setCharset("utf-8");
			send.addTo(email);// 接收者的QQEamil
			send.setFrom("2414726781@qq.com", "ANGEL");// 第一个参数是发送者的QQEamil  
														// 第二个参数是发送者QQ昵称
			send.setAuthentication("2414726781@qq.com", "gdgahhfviepsdjfc"); // 第一个参数是发送者的QQEamil
																				//  
																				// 第二个参数是刚刚获取的授权码
			send.setSubject("小渣渣特给您送上面试信息");// Eamil的标题  第一个参数是我写的判断上下午，删掉即可
			send.setMsg("HelloWorld!欢迎大大光临，特此面试通知:" + "请您于8102年13月32号在逸夫楼三楼参加面试，请不要迟到哦！");// Eamil的内容
			send.send();// 发送
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		System.out.println("email:"+email);
		SendEmail(email);
		request.getRequestDispatcher("system-base.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
