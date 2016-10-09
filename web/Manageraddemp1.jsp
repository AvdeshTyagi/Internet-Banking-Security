<%-- 
    Document   : Manageraddemp1
    Created on : 29 Mar, 2016, 5:26:04 AM
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
    String eid=request.getParameter("t3");
    
     String email=request.getParameter("t4");
     Long mob=(Long)Long.parseLong(request.getParameter("t5"));
     String add=request.getParameter("t6");
      String post=request.getParameter("t7");
      Long salary=(Long)Long.parseLong(request.getParameter("t8"));
     String cpass=request.getParameter("t9");
    String message="Account Added Successfully";
    InetAddress ipAddr = InetAddress.getLocalHost();
            
            String ar;
            ar = ipAddr.getHostAddress();
           
    
    try{
    String sqlOption="select * from Manager007 where username=? and password=?";
    
    psdoLogin=conn.prepareStatement(sqlOption);
    psdoLogin.setString(1,name);
    psdoLogin.setString(2,cpass);
    
    rsdoLogin=psdoLogin.executeQuery();
    
    if(rsdoLogin.next())
    {
      
     
      
     String INSERT_RECORD = "insert into Emp007(eid,username,password,email,mob,fname,lname,address,post,salary)values(?,?,?,?,?,?,?,?,?,?)";
    
    //PreparedStatement pstmt = conn.prepareStatement(INSERT_RECORD);
    psdoLogin=conn.prepareStatement(INSERT_RECORD);
    //pstmt.setString(1,name);
   
    //pstmt.executeUpdate();
     psdoLogin.setString(6,fname);
         psdoLogin.setString(7,lname);
         psdoLogin.setLong(10,salary);
         psdoLogin.setString(8,add);
         psdoLogin.setLong(5,mob);
         //psdoLogin.setString(6,fname);
         psdoLogin.setString(2,fname+01);
         psdoLogin.setString(3,lname+02);
         psdoLogin.setString(1,eid);
         psdoLogin.setString(9,post);            
          psdoLogin.setString(4,email); 
          
         
         
         int i=psdoLogin.executeUpdate();
          response.sendRedirect("Manageraddemp.jsp?error="+message);
    }
    else
    {
      message="Password Not Matched" ;
      response.sendRedirect("Manageraddemp.jsp?error="+message);
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

