package CSDN.angel.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestWebInfoSevelet
 */
@WebServlet("/RequestWebInfoSevelet")
public class RequestWebInfoSevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestWebInfoSevelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		StringBuffer sb=new StringBuffer();
		sb.append("<p>请求用户的IP地址：").append(request.getRemoteAddr()).append("</p>");
		sb.append("<p>请求用户的主机名：").append(request.getRemoteHost()).append("</p>");
		sb.append("<p>请求用户主机使用的网络端口：").append(request.getRemotePort()).append("</p>");
		sb.append("<p>请求web服务器的IP地址：").append(request.getLocalAddr()).append("</p>");
		sb.append("<p>请求web服务器的主机名：").append(request.getLocalName()).append("</p>");
		sb.append("<p>请求web服务器所使用的网络端口号：").append(request.getLocalPort()).append("</p>");
		sb.append("<p>网站的域名：").append(request.getServerName()).append("</p>");
		sb.append("<p>请求端口号：").append(request.getServerPort()).append("</p>");
		sb.append("<p>请求使用的协议：").append(request.getScheme()).append("</p>");
		sb.append("<p>请求使用的URL地址：").append(request.getRequestURL()).append("</p>");
		//获取输出流
		PrintWriter out=response.getWriter();
		out.println(sb.toString());
		out.close();
	}
}
