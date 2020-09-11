package itcast.controller;

import itcast.domain.Customer;
import itcast.itcast.GetSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class Login {
    @RequestMapping("/verify")
    public String Login(Customer customer){
        SessionFactory sessionFactory = GetSession.getSessionFactory();
        Session session= sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        System.out.println(customer);
        Query query = session.createQuery("from Customer where username=:username");
        query.setParameter("username", customer.getUsername());
        Customer trueCustomer = (Customer) query.uniqueResult();
        System.out.println(trueCustomer);
        transaction.commit();
        if(customer.getUsername().equals("admin") && customer.getPassword().equals(trueCustomer.getPassword())){
            return "pages/admin/mainPage";
        }else if(trueCustomer == null || !trueCustomer.getPassword().equals(customer.getPassword())){
            return "pages/loginFail/failed";
        }
        return "pages/success";
    }
}
