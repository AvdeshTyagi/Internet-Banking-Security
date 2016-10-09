<%-- 
    Document   : Manageraddac
    Created on : 29 Mar, 2016, 3:50:09 AM
    Author     : Avdesh Tyagi
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
    <head>
         <style>
body {
    background-color: lightgrey;
}

.button1 {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
     background-color:#FFA530 ; /* Green */
    border: none;
    color: black;
   
    padding: 10px 70px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    font-family: cursive;
    margin: 1px 1130px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
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
       <marquee><h2> WELCOME TO BANK OF BARODA</marquee></h2>
 <a href="http://localhost:15693/Banking/index.html"
    <button class="button button1">Logout</button>
 </a>
</div>


<div id="nav1">
   
<a href="http://localhost:15693/Banking/ManagerHomePage.html">
     <div id="nav22">
    <em> <center><h2> Home</h2></center></em>

     </div></a>



<a href="http://localhost:15693/Banking/Manageraddac.jsp">
  <div id="nav23">
   <em>  <center><h2>Add New Account</h2></center></em>

      </div></a>

    
 <a href="http://localhost:15693/Banking/Manageraddemp.jsp">   
<div id="nav24">
    <em> <center><h2> Add New Employee</h2></center></em>

</div></a>
    
    
    <a href="http://localhost:15693/Banking/Managerviewprofile.jsp">
<div id="nav25">
    <em> <center><h2> View Profile</h2></center></em>

</div></a>

    
<a href="http://localhost:15693/Banking/ManagerChangePass.jsp">    
<div id="nav26">
    <em> <center><h2> Change Password</h2></center></em>

</div></a>
    
    
    <a href="http://localhost:15693/Banking/ManagerSearchEmp.jsp">
<div id="nav27">
    <em> <center><h2> Search Employee</h2></center></em>

</div></a>

    
<a href="http://localhost:15693/Banking/ManagerUpdateEmp.jsp">    
<div id="nav28">
    <em> <center><h2> Update Employee</h2></center></em>

</div></a>
    
    
<a href="http://localhost:15693/Banking/ManagerSearchCust.jsp">    
<div id="nav29">
    <em> <center><h2> Search Customer</h2></center></em>

</div></a>

    
<a href="http://localhost:15693/Banking/ManagerUpdateCust.jsp">    
<div id="nav30">
    <em> <center><h2>Update Customer</h2></center></em>

</div></a>
    
  
    
    
<a href="http://localhost:15693/Banking/index.html">    
<div id="nav32">
    <em> <center><h2>Logout</h2></center></em>

</div><br></a>
   <p> </P><br><br>


   



</div>











<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%
String error=request.getParameter("error");
if(error==null || error=="null"){
 error="";
}
%>
<html>
    <head>
      <script>
    function trim(s) 
    {
        return s.replace( /^s*/, "" ).replace( /s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.t1.value)=="")
        {
          alert("Enter First Name");
          document.frmLogin.t1.focus();
          return false;
        }
        else if(trim(document.frmLogin.t2.value)=="")
        {
          alert("Enter Last Name");
          document.frmLogin.t2.focus();
          return false;
        }
        else if(trim(document.frmLogin.t3.value)=="")
        {
          alert("Enter Account Number");
          document.frmLogin.t3.focus();
          return false;
        }
        else if(trim(document.frmLogin.t4.value)=="")
        {
          alert("Enter Email");
          document.frmLogin.t4.focus();
          return false;
        }
        else if(trim(document.frmLogin.t5.value)=="")
        {
          alert("Enter Contact Number");
          document.frmLogin.t5.focus();
          return false;
        }
        else if(trim(document.frmLogin.t6.value)=="")
        {
          alert("Enter Address");
          document.frmLogin.t6.focus();
          return false;
        }
        else if(trim(document.frmLogin.t7.value)=="")
        {
          alert("Enter Password");
          document.frmLogin.t7.focus();
          return false;
        }
        
         
    }
</script>  
        
    </head>
    <body>
        
      
<form style="text-align:left" name="frmLogin" onSubmit="return validate();" action="Manageraddac1.jsp" method="post">

    

<em> <center><h1>Add New Customer</h1></center></em>
<div><em><center><h2 style="color:black; font-family:cursive;" ><%=error%></h2></center></em></div>
<em><h3>First Name:</em><input style="height:30px;  margin-left: 110px; width:400px;font-size:14pt;" type="text" name="t1"></h3>
<em><h3>Last Name :</em><input style="height:30px;  margin-left: 110px; width:400px;font-size:14pt;" type="text" name="t2"></h3>
<em><h3>Account Number:</em><input style="height:30px;  margin-left: 67px; width:400px;font-size:14pt;" type="number" name="t3"></h3>
<em><h3>Email:</em><input style="height:30px;  margin-left: 150px; width:400px;font-size:14pt;" type="text" name="t4"></h3>
<em><h3>Contact No:</em><input style="height:30px;  margin-left: 112px; width:400px;font-size:14pt;" type="number" name="t5"></h3>

<em><h3>Address:</em><input style="height:30px;  margin-left: 134px; width:400px;font-size:14pt;" type="text" name="t6"></h3>
<em><h3>Password:</em><input style="height:30px;  margin-left: 122px; width:400px;font-size:14pt;" type="password" name="t7"></h3>


<input style="height:50px;  margin-left: 520px; width:100px;font-size:14pt; background-color:pink" type="Reset" value="Reset">

<input style="height:50px;  margin-left: 30px; width:100px;font-size:14pt; background-color:green" type="submit" value="Add A/C">



</form>





       




</body>
</html>








<div id="footer">
Copyright ? BANK OF BARODA
</div>
  
        
        
        
        
        
       
    </body>
</html>
