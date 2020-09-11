package testHibernate;

import itcast.domain.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class HibernateTest {
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;
    @Before
    public void before(){
        sessionFactory = new Configuration().configure("hibernateXML/hibernate.cfg.xml").buildSessionFactory();
        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
    }
    @After
    public void destory(){
        transaction.commit();
        session.close();
        sessionFactory.close();
    }
    @Test
    public void testConnect(){
        Customer customer = session.get(Customer.class, 2);
        System.out.println(customer);
    }
}
