<%-- 
    Document   : Deleteaccount2
    Created on : 29 Mar, 2016, 12:20:12 AM
    Author     : Avdesh Tyagi
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
               
Long acno=Long.parseLong(request.getParameter("t1"));
String fname=request.getParameter("t2");
String lname=request.getParameter("t3");
String address=request.getParameter("t4");
Long cno=Long.parseLong(request.getParameter("t5"));
String email=request.getParameter("t6");
String cpass=request.getParameter("t7");


          
          
          try {
             
              
            Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            //Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            
            Statement st = con.createStatement();
            //Statement st1 = con1.createStatement();
            
            Calendar calendar = Calendar.getInstance();
            
   // java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
   String name=(String)session.getAttribute("Uname");
      String pass=(String)session.getAttribute("Pass");
      if(cpass.equals(pass)){
            
            
            
            
            
            String req     = "Delete from ACCOUNT1 where acno=?";
                PreparedStatement    ps=con.prepareStatement(req);
                //ps.setString(1, Name);
                  ps.setLong(1, acno);
                  // ps.setString(2, type);
                   //ps.setDate(3, date111);
            
            
            
            
            
            
            
              
                  
                 int i= ps.executeUpdate();
                  
                  
                  if(i>0){
                      
                     
                      response.sendRedirect("Deleteaccount.jsp");
           
        
                 
         }
          }
      else{
          String message="Invalid Password";
            response.sendRedirect("Deleteaccount1.jsp?error="+message);
           
      }
     
          }   
        catch (Exception eh)
                {
                System.out.println(eh);
                }    
            
            
            
            %>
    </body>
</html>
