package dao;
import org.hibernate.*;
//to use SessionFactory and Session
import org.hibernate.cfg.Configuration;

public class SessionUtil 
{
	private static Session ses=null;
	//variable to store current session object
	
	@SuppressWarnings("deprecation")
	public static Session getSession()
	{
		SessionFactory fac=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		//retrieving SessionFactory object
		ses=fac.getCurrentSession();
		//retrieving current session
		ses.beginTransaction();
		//beginning the transaction
		return ses;
		//returning the Session object
	}
}
