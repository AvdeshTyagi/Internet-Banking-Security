<%-- 
    Document   : viewprofileemp
    Created on : 25 Mar, 2016, 7:11:38 PM
    Author     : Avdesh Tyagi
--%>
<html>
    <head>
         <style>
body {
    background-color: lightgrey;
}




#header {
    background-color:#FF5930;
    color:white;
height:200px;
    
    text-align:top;
    padding:5px;
}
#nav1 {
    line-height:30px;
    background-color:#eeeeee;
    height:580px;
    width:236px;
    float:left;
    padding:5px;
    margin:10px;	      
}

#nav2 {
    
   background-color:#eeeeee;
    height:580px;
    width:1030px;
    float:left;
    padding:5px;
     margin:10px;	      
}

#nav3 {
    line-height:30px;
    background-color:#eeeeee;
    height:240px;
    width:236px;
    float:left;
    padding:5px;
    margin:10px;	      
}

#section1 {
    	line-height:30px;
    background-color:#eeeeee;
    height:240px;
    width:236px;
    float:left;
    padding:5px;
    margin:10px; 	 
}





#nav22 {
     line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
    
   
}
#nav23 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
    
     	      
}

#nav24 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav25 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}

#nav26 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav27 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}

#nav28 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav29 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav30 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav31 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}
#nav32 {
    line-height:30px;
    background-color:white;
    height:50px;
    width:236px;
    float:left;
    margin:1px;
     	      
}






#footer {
    background-color:#FF5930;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
        
        
        
    </head>
     <body>
        
      <div id="header">

      
       <img src="pi/logowith100.gif" alt="Bank-of-Baroda">
<marquee><h1> WELCOME TO BANK OF BARODA</h1></marquee>
</div>


<div id="nav1">
   

     <a href="http://localhost:15693/Banking/emphomepage.html">
     <div id="nav22">
    <em> <center><h2> Home</h2></center></em>

     </div></a>



<a href="http://localhost:15693/Banking/searchbar.jsp">
  <div id="nav23">
   <em>  <center><h2> Search Customer</h2></center></em>

      </div></a>

    
 <a href="http://localhost:15693/Banking/addacemp.jsp">   
<div id="nav24">
    <em> <center><h2> Add Customer</h2></center></em>

</div></a>
    
    
    <a href="http://localhost:15693/Banking/viewprofileemp.jsp">
<div id="nav25">
    <em> <center><h2> View Profile</h2></center></em>

</div></a>

    
<a href="http://localhost:15693/Banking/changepassemp.jsp">    
<div id="nav26">
    <em> <center><h2> Change Password</h2></center></em>

</div></a>
    
    
    <a href="http://localhost:15693/Banking/addbalanceemp.jsp">
<div id="nav27">
    <em> <center><h2> Add Balance</h2></center></em>

</div></a>

    
<a href=" http://localhost:15693/Banking/RTGSstatement.jsp">    
<div id="nav28">
    <em> <center><h2> RTGS Statement</h2></center></em>

</div></a>
    
    
<a href="http://localhost:15693/Banking/NEFTstatement.jsp">    
<div id="nav29">
    <em> <center><h2> NEFT Statement</h2></center></em>

</div></a>

    
<a href="http://localhost:15693/Banking/Deductbalance.jsp">    
<div id="nav30">
    <em> <center><h2>Deduct Balance</h2></center></em>

</div></a>
    
    
<a href="http://localhost:15693/Banking/Deleteaccount.jsp">    
<div id="nav31">
    <em> <center><h2>Delete Account</h2></center></em>

</div></a>
    
    
<a href="http://localhost:15693/Banking/index.html">    
<div id="nav32">
    <em> <center><h2>Logout</h2></center></em>

</div><br></a>
</div>












<div id="nav2">

<html>
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
        
    
    
   //Long acno =Long.parseLong(request.getParameter("t1"));
    
    
    %>
    
    
    <%
        //long y=101;
      String name=(String)session.getAttribute("Uname");
      String pass=(String)session.getAttribute("Pass");
      
             //Long pass =Long.parseLong(request.getParameter("t6"));
     Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            
            Statement st = con.createStatement();
        //String pass =request.getParameter("t6");
        //long i=0;
        //i= Long.parseLong(ac.trim());
        
        
        /*ResultSet rs;
         
         String  sql = "SELECT balance FROM Account1" +
                   " WHERE acno = " + y;
                     rs = st.executeQuery(sql);*/
        
  //ResultSet rs = 
                //st.executeQuery("select fname from Account1 where acno ='102'") ;
            ResultSet rs ;
                //st.executeQuery("select fname from Account1 where acno =?") ;
        //PreparedStatement ps=con.prepareStatement("select balance from Account1 where password=? ");
            PreparedStatement ps=con.prepareStatement("select fname,lname,eid,mob,email,address from emp007 where username=? ");
                  ps.setString(1, name);
                  //ps.setString(2, z);
                   //ps.setString(3, br);
                  
                  rs=ps.executeQuery();
                  
            
            
            
            
  %>
  
    
    
    
    
    
    
    
 <TABLE BORDER="1">
            
            <% while(rs.next()){ %>
            
            
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;">First Name=<%= rs.getString(1) %> </h1></em>
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;">Last Name=<%= rs.getString(2) %> </h1></em>
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;" >Employee ID=<%= rs.getString(3) %> </h1></em>
            
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;">Contact Number=<%= rs.getLong(4) %> </h1></em>
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;">Email=<%= rs.getString(5) %> </h1></em>
            <em><h1 style="color:indigo;height:30px;  margin-left: 5px; width:400px;font-size:22pt;">Address=<%= rs.getString(6) %> </h1></em>
            <% } %>
        </TABLE>
 


</body>
</html>
</div>







<div id="footer">
Copyright ? BANK OF BARODA
</div>
  
        
        
        
        
        
       
    </body>
</html>
