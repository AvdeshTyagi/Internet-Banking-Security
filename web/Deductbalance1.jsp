<%-- 
    Document   : Deductbalance1
    Created on : 29 Mar, 2016, 2:19:35 AM
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
    Statement st = conn.createStatement();
    ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
    String name=(String)session.getAttribute("Uname");
      String pass=(String)session.getAttribute("Pass");
    
    String fname=request.getParameter("t1");
    Long acno=(Long)Long.parseLong(request.getParameter("t2"));
     Long amount=(Long)Long.parseLong(request.getParameter("t3"));
     String specification=request.getParameter("t4");
     Long mob=(Long)Long.parseLong(request.getParameter("t5"));
     String add=request.getParameter("t6");
     String cpass=request.getParameter("t7");
    String message="Amount Deducted Successfully";
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
      
     st.executeUpdate("update Account1 set balance=balance-" +amount+"where acno="+acno );
     
      
     String INSERT_RECORD = "insert into statementtable(acno,date2,drcr,amount,specification,type) values(?,?,?,?,?,?)";
    
    //PreparedStatement pstmt = conn.prepareStatement(INSERT_RECORD);
    psdoLogin=conn.prepareStatement(INSERT_RECORD);
    //pstmt.setString(1,name);
   
    //pstmt.executeUpdate();
     psdoLogin.setLong(1,acno);
     java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
    psdoLogin.setDate(2, sqlDate);
    psdoLogin.setString(3, "Dr");
    psdoLogin.setLong(4,amount);
    psdoLogin.setString(5,"Balance Deduction from Bank");
         psdoLogin.setString(6,"Balance Deduction");
    
    
        
         
         
         int i=psdoLogin.executeUpdate();
          response.sendRedirect("Deductbalance.jsp?error="+message);
    }
    else
    {
      message="Password Not Matched" ;
      response.sendRedirect("Deductbalance.jsp?error="+message);
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

