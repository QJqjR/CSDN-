package CSDN.angel.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class SessionAttrListener
 *
 */
@WebListener
public class SessionAttrListener implements HttpSessionAttributeListener {
	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    	System.out.println("...attributeAdded...");
        HttpSession session=event.getSession();
        String name=(String) event.getValue();
        session.getServletContext().setAttribute("name", name);
        System.out.println("我的名字是："+name);
        System.out.println("ID:"+session.getId());
        System.out.println("name:"+event.getName());
        System.out.println("value:"+event.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
    	System.out.println("...attributeRemoved...");
        HttpSession session=event.getSession();
       // session.getServletContext().setAttribute("num", ++num);
        System.out.println("ID:"+session.getId());
        System.out.println("name:"+event.getName());
        System.out.println("value:"+event.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent event)  { 
    	System.out.println("...attributeAdded...");
        HttpSession session=event.getSession();
        System.out.println("ID:"+session.getId());
        System.out.println("name:"+event.getName());
        System.out.println("value:"+event.getValue());
    }
	
}
