/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
//  package controller;
import model.Doctors;
import model.Appointments;

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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import model.HibernateUtil;
import org.hibernate.Session;
import org.springframework.web.servlet.mvc.Controller;

/**
 *
 * @author asadqureshi
 */
public class set implements Controller {

  
     @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
        
        
       ModelAndView m = new ModelAndView("set");
        String docid = hsr.getParameter("id");
        String start = hsr.getParameter("start");
        String end  = hsr.getParameter("end");
        String dates = hsr.getParameter("date");
        
         SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
         Date d = sdf.parse(dates);
        
        SimpleDateFormat f = new SimpleDateFormat("HH:mm:ss");
        Date s = f.parse(start);
        
         SimpleDateFormat ef = new SimpleDateFormat("HH:mm:ss");
        Date e= f.parse(end);
        
        
        
        long pateientidentifier = 34343;
      int appointment = 324;
        
 int subjectid = 0;
 if(docid !=null && !docid.isEmpty())
     subjectid=Integer.parseInt(docid.trim());
        
       
        //String city = hsr.getParameter("doctordepartment");
       Appointments a = new Appointments();
        Session sessionx = HibernateUtil.getSessionFactory().getCurrentSession();
          sessionx.beginTransaction();
          a.setAppointmentid(appointment);
          a.setDate(d);
          a.setDocid(subjectid);
          a.setTimeofday("Morning");
          a.setStarttime(s);
          a.setEndtime(e);
          a.setPateientidentifier(pateientidentifier);
          sessionx.save(a);

            
          sessionx.getTransaction().commit();
  //return new ModelAndView(new RedirectView("home.htm"));
          
    return new ModelAndView(new RedirectView("home.htm"));
    
}
    
}


