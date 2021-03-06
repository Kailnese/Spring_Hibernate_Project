package itcast.controller;

import itcast.domain.Customer;
import itcast.itcast.ProjectFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping(path="/getCustomerList", method = RequestMethod.GET)
    public String getCustomerList(ModelMap model){
        SessionFactory sessionFactory = ProjectFactory.getSessionFactory();
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from Customer");
        ArrayList<Customer> list = (ArrayList<Customer>) query.getResultList();
        for(Customer cus: list){
            System.out.println(cus);
        }
        model.put("customers", list);
        System.out.println("");
        for(String cus: model.keySet()){
            System.out.println(cus+" : "+model.get(cus));
        }
        transaction.commit();
        return "pages/admin/mainPage";
    }
    @RequestMapping(path = "/directToLearning", method = RequestMethod.POST)
    public String directToLearning(){
        return "pages/admin/learningPlace/learning";
    }
    @RequestMapping(path = "/backToMain", method = RequestMethod.GET)
    public String directToMain(){
        return "pages/admin/mainPage";
    }
}
