package itcast.itcast;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ProjectFactory {
    private static SessionFactory sessionFactory;
    public static SessionFactory getSessionFactory(){
        if(sessionFactory == null){
            sessionFactory = new Configuration().configure("hibernateXML/hibernate.cfg.xml").buildSessionFactory();
        }
        return sessionFactory;
    }
}
