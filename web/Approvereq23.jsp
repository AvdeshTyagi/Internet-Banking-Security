<%-- 
    Document   : Approvereq23
    Created on : 27 Mar, 2016, 11:58:05 PM
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
               String Name=request.getParameter("t1");
Long acno=Long.parseLong(request.getParameter("t2"));

String type=request.getParameter("t3");
Long dcno=Long.parseLong(request.getParameter("t4"));
Long ccno=Long.parseLong(request.getParameter("t5"));
Long cno=Long.parseLong(request.getParameter("t6")); 
Date date11=Date.valueOf(request.getParameter("t7"));

java.sql.Date ardate=date11;
          
          
          try {
             
              
            Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            //Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            
            Statement st = con.createStatement();
            //Statement st1 = con1.createStatement();
            
            Calendar calendar = Calendar.getInstance();
         // java.util.Date udate=date11;
   // java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
   // java.sql.Date sqlDate1 = new java.sql.Date(new java.util.Date().parseInt(udate));
            //java.sql.Date date111 =newdate11;
            ResultSet rs;
             //ResultSet rs1;
            
            String req     = "Delete from Requesttable1 where acno=? and type=? ";
                  PreparedStatement ps=con.prepareStatement(req);
                //ps.setString(1, Name);
                  ps.setLong(1, acno);
                   ps.setString(2, type);
                  // ps.setDate(3, ardate);
            
            
            
            
            
            
            
              
                  
                 int i= ps.executeUpdate();
                  
                  
                  if(i>0){
                      
                      
                        String INSERT_RECORD = "insert into REQUESTAPPROVED11(name,acno,type,dcno,ccno,cno,date2)values(?,?,?,?,?,?,?)";
     
    ps = con.prepareStatement(INSERT_RECORD);
    ps.setString(1,Name);
    ps.setLong(2,acno);
    ps.setString(3,type);
    ps.setLong(4,dcno);
     ps.setLong(5,ccno);
      ps.setLong(6,cno);
    
    java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
    ps.setDate(7, sqlDate);
    
    int j=ps.executeUpdate();
                    
               if(j>0){  
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      response.sendRedirect("viewrequestemp.jsp");
           
        
                 
         }
          }
     
          }   
        catch (Exception eh)
                {
                System.out.println(eh);
                }    
            
            
            
            %>
    </body>
</html>
