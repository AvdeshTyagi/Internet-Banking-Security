<%-- 
    Document   : DifferentIP
    Created on : 21 Apr, 2016, 10:23:16 PM
    Author     : Avdesh Tyagi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import = "java.sql.*" %>
    <%@ page import = "java.io.*" %>
     
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "javax.servlet.ServletException" %>
    <%@ page import = "javax.servlet.http.HttpServlet" %>
    <%@ page import = "javax.servlet.http.HttpServletRequest" %>
    <%@ page import = "javax.servlet.http.HttpServletResponse" %>
    <%@ page import = "javax.servlet.RequestDispatcher" %>
    <%@ page import = "javax.servlet.ServletConfig" %>
    <%
         Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            
            Statement st = con.createStatement();
            
            
            ResultSet rs;
             String name=(String)session.getAttribute("pass1");
      Long acnu=(Long)session.getAttribute("acno1");
      
        String b= request.getParameter("Login");
        if ("1".equals(b)) { 
        response.sendRedirect("EnterIPPassword.html");
        }
        else if ("2".equals(b)) { 
            
           
       String  sql = "SELECT email FROM Account1" +
                   " WHERE acno = " + acnu;
                     rs = st.executeQuery(sql);
      //STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
        
         String email=rs.getString("email");
           
            
            
            
            
            
            String to=""+email +"";//change accordingly  
   String Subject="ONE TIME PASSWORD";
   String Message="Your OTP IS  = ARMAAN ";
   String user="bankofbaroda05@gmail.com";
   String pass="searmaan0573";
   SendMail.send(to,Subject, Message, user, pass);
  
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        response.sendRedirect("EnterOTPPass.html");
        
        }
        
        
        
        %>
    
    
    
    
    
    
    </body>
</html>
