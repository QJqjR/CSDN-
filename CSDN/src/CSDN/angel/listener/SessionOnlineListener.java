package CSDN.angel.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionOnlineListener
 *
 */
@WebListener
public class SessionOnlineListener implements HttpSessionListener {
	private int num;
	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent event)  { 
    	System.out.println("...sessionCreat...");
        HttpSession session=event.getSession();
        System.out.println("ID:"+session.getId());
        System.out.println("CreationTime:"+session.getCreationTime());
        session.getServletContext().setAttribute("num", ++num);
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent event)  { 
    	System.out.println("...sessionDestroyed...");
        HttpSession session=event.getSession();
        System.out.println("ID:"+session.getId());
        System.out.println("LastAccessedTime:"+session.getLastAccessedTime());
        session.getServletContext().setAttribute("num", --num);
    }
	
}
