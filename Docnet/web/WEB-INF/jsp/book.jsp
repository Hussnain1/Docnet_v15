<%-- 
    Document   : doctors
    Created on : Apr 20, 2015, 10:30:03 PM
    Author     : asadqureshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Details</title>
    </head>
    <body>
        <h1>Doctor Details</h1><br>
        <table>
            <tr>
                <th>ID</th>
                <th>Monday</th>
               <th>Tueday</th>
               <th>Wedensday</th>
               <th>Thursday</th>
               <th>Friday</th>
               
            </tr>
            <c:forEach items="${book}" var="doc">
            <tr>
                <td><c:out value="${doc.getId()}"/></td>
                <td><c:out value="${doc.getTuesdaystartE()}"/></td>
                <td><c:out value="${doc.getWednesdaystartE()}"/></td>
                <td><c:out value="${doc.getThursdaystartE()}"/></td>
               <td><c:out value="${doc.getFridaystartE()}"/></td>
                 
                
                
                
                
                
                </tr>
            </c:forEach>
        </table>
        
        
        
         <form class="form-signin" action="set.htm">
                        <div class="form-group">
                      
                        </div>
                    <br>
                   
                   <div class="form-group">
                        
                            <label class="col-md-4"> Doctor ID <br/>
                          <input type="text" name="id" class="form-control" placeholder="id" value="">
                    </div>
                
                   <div class="form-group">
                        
                            <label class="col-md-4"> Srart time<br/>
                          <input type="text" name=start class="form-control" placeholder="appointment" value="">
                          
                    </div>
                <div class="form-group">
                        
                            <label class="col-md-4"> End time <br/>
                          <input type="text" name="end" class="form-control" placeholder="city" value="">
                    </div>
                
                    <div class="form-group">
                        
                            <label class="col-md-4"> Date<br/>
                          <input type="text" name="date" class="form-control" placeholder="city" value="">
                    </div>
                
                    
                    
                    <button class="btn btn-primary" type="submit" value="Submit">Book</button></div>
              </form>
      
    </body>
</html>
