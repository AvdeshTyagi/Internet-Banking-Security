<%-- 
    Document   : ManagerChangePass1
    Created on : 29 Mar, 2016, 6:14:45 AM
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
    String name=(String)session.getAttribute("Uname");
      String pass=(String)session.getAttribute("Pass");
    
    String cpass=request.getParameter("t1");
    String newpass1=request.getParameter("t2");
     String newpass2=request.getParameter("t3");
    String message="Password Changed Successfully ";
    
    try{
    String sqlOption="select * from Manager007 where username=? and password=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,name);
    psdoLogin.setString(2,cpass);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      
     
      
     PreparedStatement ps=conn.prepareStatement("update Manager007 set password='"+newpass1+ "' where username=? and password=? ");
                  ps.setString(1, name);
                  ps.setString(2, cpass);
                   //ps.setString(3, br);
                  
                  rsdoLogin=ps.executeQuery();
      session.setAttribute("Pass",newpass1);
     
      response.sendRedirect("ManagerChangePass.jsp?error="+message);
    }
    else
    {
      message="No User-Name or Password Matched" ;
      response.sendRedirect("ManagerChangePass.jsp?error="+message);
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
