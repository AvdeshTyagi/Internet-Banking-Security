<%-- 
    Document   : addacemp1
    Created on : 26 Mar, 2016, 12:14:36 AM
    Author     : Avdesh Tyagi
--%>

<%@page import="java.net.InetAddress"%>
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
    
    String fname=request.getParameter("t1");
    String lname=request.getParameter("t2");
     Long acno=(Long)Long.parseLong(request.getParameter("t3"));
     String email=request.getParameter("t4");
     Long mob=(Long)Long.parseLong(request.getParameter("t5"));
     String add=request.getParameter("t6");
     String cpass=request.getParameter("t7");
    String message="Account Added Successfully";
    InetAddress ipAddr = InetAddress.getLocalHost();
            
            String ar;
            ar = ipAddr.getHostAddress();
           
    
    try{
    String sqlOption="select * from Emp007 where username=? and password=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,name);
    psdoLogin.setString(2,cpass);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      
     
      
     String INSERT_RECORD = "insert into Account1(fname,lname,acno,address,mob,username,password,locationpassword,ipaddress,email,balance)values(?,?,?,?,?,?,?,?,?,?,?)";
    
    //PreparedStatement pstmt = conn.prepareStatement(INSERT_RECORD);
    psdoLogin=conn.prepareStatement(INSERT_RECORD);
    //pstmt.setString(1,name);
   
    //pstmt.executeUpdate();
     psdoLogin.setString(1,fname);
         psdoLogin.setString(2,lname);
         psdoLogin.setLong(3,acno);
         psdoLogin.setString(4,add);
         psdoLogin.setLong(5,mob);
         //psdoLogin.setString(6,fname);
         psdoLogin.setString(6,fname+01);
         psdoLogin.setString(7,lname+02);
         psdoLogin.setString(8,fname+03);
         psdoLogin.setString(9,ar);            
          psdoLogin.setString(10,email); 
          psdoLogin.setLong(11,000);
         
         
         int i=psdoLogin.executeUpdate();
          response.sendRedirect("addacemp.jsp?error="+message);
    }
    else
    {
      message="Password Not Matched" ;
      response.sendRedirect("addacemp.jsp?error="+message);
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

