<%-- 
    Document   : ManagerdoLogin
    Created on : 29 Mar, 2016, 5:10:53 AM
    Author     : Avdesh Tyagi
--%>

<%@ page language="java" import="java.sql.*" errorPage="" %>
<%

    Connection conn = null;
    //Class.forName("com.mysql.jdbc.Driver").newInstance();
    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
           
    conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
    //conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/database","root", "");
    
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    
    String username=request.getParameter("n1");
    String password=request.getParameter("n2");
    String message="User login successfully ";
    
    try{
    String sqlOption="select * from Manager007 where username=? and password=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,username);
    psdoLogin.setString(2,password);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      
     
      
      session.setAttribute("Uname",username);
      session.setAttribute("Pass",password);
     
      response.sendRedirect("ManagerHomePage.html?error="+message);
    }
    else
    {
      message="No User-Name or Password Matched" ;
      response.sendRedirect("Managerlogin.jsp?error="+message);
    }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    /// close object and connection
    try{
         if(psdoLogin!=null){
             psdoLogin.close();
         }
         if(rsdoLogin!=null){
             rsdoLogin.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }

%>