/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
//  package controller;
import model.Doctors;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.web.servlet.ModelAndView; 
import org.springframework.web.servlet.view.RedirectView; 
import org.hibernate.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory; 
import java.io.IOException;
import java.util.List;
import model.HibernateUtil;
import org.hibernate.Session;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author asadqureshi
 */
public class book implements Controller {

  
     @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        
        
        ModelAndView m = new ModelAndView("book");
        String docid = hsr.getParameter("search4");
        
        
 int subjectid = 0;
 if(docid !=null && !docid.isEmpty())
     subjectid=Integer.parseInt(docid.trim());
        
       
        //String city = hsr.getParameter("doctordepartment");
       
        Session sessionx = HibernateUtil.getSessionFactory().getCurrentSession();
          sessionx.beginTransaction();
           Query query = sessionx.createQuery("from Timings where id = :docid");
          //query.setParameter("doctordepartment", dep);
          //query.setParameter("city", city);
            query.setParameter("docid", subjectid);
             List list = query.list();
           //  if (list.size()==0){
            //     return new ModelAndView(new RedirectView("home.htm"));
                 
           //  }
              m.addObject("book", list);
              m.getViewName();
          sessionx.getTransaction().commit();
  //return new ModelAndView(new RedirectView("home.htm"));
          
    return m;
    
}
    
}


