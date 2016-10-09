<%-- 
    Document   : emplogin
    Created on : 25 Mar, 2016, 3:04:29 AM
    Author     : Avdesh Tyagi
--%>

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
        if(trim(document.frmLogin.n1.value)=="")
        {
          alert("Login empty");
          document.frmLogin.n1.focus();
          return false;
        }
        else if(trim(document.frmLogin.n2.value)=="")
        {
          alert("password empty");
          document.frmLogin.n2.focus();
          return false;
        }
    }
</script>
<style>
#header {
    background-color:#FF5930;
    color:white;
height:200px;
    
    text-align:top;
    padding:5px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:400px;
    width:650px;
    float:left;
    padding:5px;	      
}
#section {
    width:350px;
    float:left;
    padding:10px;	 	 
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
    <img align="right" src="pi/logowith100.gif" alt="Bank-of-Baroda"> 
    
<form style="text-align:left" name="frmLogin" onSubmit="return validate();" action="doLogin.jsp" method="post">
        
        User Name    <input type="text" name="n1"
                            >
        Password     <input type="password" name ="n2"
                           >
        <input type="submit" value ="Login">
       
        <input type="reset" value="Reset" >
               
        </form>
     
       <div><em><h2 style="color:black; font-family:cursive;" ><%=error%></h2></em></div>

</div>

<div id="nav">
<img height="400" width="650" src="pi/banner_201_2015.jpg" alt="Bank-of-Baroda">

</div>

<div id="section">
<img height="400" width="650" src="pi/banner_20_2015.jpg" alt="Bank-of-Baroda">

</div>

<div id="footer">
Copyright © BANK OF BARODA
</div>

</body>
</html>
