<%-- 
    Document   : addbalanceemp
    Created on : 28 Mar, 2016, 4:26:56 AM
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
        
      
<form style="text-align:left" name="frmLogin" onSubmit="return validate();" action="addbalance.jsp" method="post">

    

<em> <center><h1>Add Balance</h1></center></em>
<div><em><center><h2 style="color:black; font-family:cursive;" ><%=error%></h2></center></em></div>
<em><h3>Account Holder Name:</em><input style="height:30px;  margin-left: 22px; width:400px;font-size:14pt;" type="text" name="t1"></h3>
<em><h3>Account Number :</em><input style="height:30px;  margin-left: 58px; width:400px;font-size:14pt;" type="number" name="t2"></h3>
<em><h3>Amount :</em><input style="height:30px;  margin-left: 130px; width:400px;font-size:14pt;" type="number" name="t3"></h3>
<em><h3>Specification :</em><input style="height:30px;  margin-left: 92px; width:400px;font-size:14pt;" type="text" name="t4"></h3>
<em><h3>Contact No:</em><input style="height:30px;  margin-left: 112px; width:400px;font-size:14pt;" type="number" name="t5"></h3>

<em><h3>Address:</em><input style="height:30px;  margin-left: 134px; width:400px;font-size:14pt;" type="text" name="t6"></h3>
<em><h3>Password:</em><input style="height:30px;  margin-left: 122px; width:400px;font-size:14pt;" type="password" name="t7"></h3>


<input style="height:50px;  margin-left: 520px; width:100px;font-size:14pt; background-color:pink" type="Reset" value="Reset">

<input style="height:50px;  margin-left: 30px; width:100px;font-size:14pt; background-color:green" type="submit" value="Add Balance">



</form>





       




</body>
</html>








<div id="footer">
Copyright ? BANK OF BARODA
</div>
  
        
        
        
        
        
       
    </body>
</html>

