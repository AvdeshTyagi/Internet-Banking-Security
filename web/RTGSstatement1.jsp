<%-- 
    Document   : RTGSstatement1
    Created on : 29 Mar, 2016, 2:35:17 AM
    Author     : Avdesh Tyagi
--%>





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
   
    padding: 15px 70px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    font-family: cursive;
    margin: 1px 12px;
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
   height:auto;
    width:236px;
    float:left;
    padding:5px;
    margin:10px;	      
}

#nav2 {
    
   background-color:#eeeeee;
    height:auto;
    width:auto;
    
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
<a href="http://localhost:15693/Banking/emphomepage.html"
    <button class="button button1">Home</button>
 </a>
</div>











<div id="nav2">

<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>

<html>
<head>
<title>Search Box Example 1</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
<!-- CSS styles for standard search box -->
<script>
    function trim(s) 
    {
        return s.replace( /^s*/, "" ).replace( /s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.q.value)=="")
        {
          alert("Search Bar Empty");
          document.frmLogin.q.focus();
          return false;
        }
        else if(trim(document.frmLogin.search.value)=="")
        {
          alert("Radio button is not Clicked");
          document.frmLogin.search.focus();
          return false;
        }
    }
</script>
<style type="text/css">
	#tfheader{
		background-color:#c3dfef;
                height: auto;
                padding: 1px;
	}
	#tfnewsearch{
		float:right;
		padding:2px;
	}
	.tftextinput{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3; border-right:0px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	.tfbutton {
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #0076a3; border-right:0px;
		background: #0095cd;
		background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
		background: -moz-linear-gradient(top,  #00adee,  #0078a5);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
	.tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
		background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	}
	/* Fixes submit button height problem in Firefox */
	.tfbutton::-moz-focus-inner {
	  border: 0;
	}
	.tfclear{
		clear:both;
	}
        #header {
    background-color:#FF5930;
    color:white;
height:220px;
    
    text-align:top;
    padding:5px;
}
tbody {
    height: auto;
    width: auto;
    display: table-row-group;
    vertical-align: middle;
     border: 1px solid black;
    border-color: black;
    border-top-color: black;
    border-right-color: black;
    border-bottom-color: black;
    border-left-color: black;
}
th, td {
     border: 1px solid black;
    padding: 15px;
    text-align: center;
}
table#customers {
    font-size: 16px;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
}
</style>
</head>
<body>
   
	<!-- HTML for SEARCH BAR -->
	<div id="tfheader">
            <em><center><h1>Search Customer</h1></center></em>
		<form name="frmLogin" onSubmit="return validate();" id="tfnewsearch" method="get" action="RTGSstatement1.jsp">
                  
		        <input type="text" class="tftextinput" name="q" size="21" maxlength="120"><input type="submit" value="search" class="tfbutton">
                        <br><input type="radio" name="search" value="1">Search By Name<br>
  <input type="radio" name="search" value="2"> Search By A/C<br>
                </form>
	<div class="tfclear"></div>
        
        
        
        
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
        
            ResultSet rs ;
                
           String message="User login successfully ";
            String b= request.getParameter("search");
            
            
            
            
            
            
        if ("2".equals(b)) {
        String xx=request.getParameter("q");
            PreparedStatement ps=con.prepareStatement("select acno,drcr,amount,specification,type,date2 from statementtable where acno=? and LOWER(type) like '%rtgs%' or type like '%RTGS%' order by date2 desc");
                  ps.setString(1, xx);
                 
                  
                  rs=ps.executeQuery();
        
                  
            
            
            
            
  %>
        
  
     
    
        <table id="customers">
          <tbody>
            <TR>
                
                
                 <TH style="background-color: #4CAF50">A/C No.</TH>
                <TH style="background-color: #4CAF50">Dr/Cr</TH>
                <TH style="background-color: #4CAF50">Amount</TH>
                <TH style="background-color: #4CAF50">Specification</TH>
                <TH style="background-color: #4CAF50">Type</TH>
                <TH style="background-color: #4CAF50">Date</TH>
            </TR>
            <% while(rs.next()){ %>
            
           <TR>
                
                <TD> <%= rs.getLong(1) %></td>
                 
                <TD> <%= rs.getString(2) %></td>
                
                <TD> <%= rs.getLong(3) %></td>
               
                <TD> <%= rs.getString(4) %></td>
                
                <TD> <%= rs.getString(5) %></td>
                
                
               
                <TD> <%= rs.getDate(6) %></TD>
                
               
                
                
            </TR>
           
            <% } %>
             <% } 
         

        else if("1".equals(b)){
            String xx=request.getParameter("q");
            PreparedStatement ps=con.prepareStatement("select acno,drcr,amount,specification,type,date2 from statementtable where LOWER(type) like '%rtgs%' or type like '%RTGS%' and LOWER(name) like '%" +xx +"%' or name like '%"+xx+"%' order by date2 desc");
                  //ps.setString(1, xx);
                 
                  
                  rs=ps.executeQuery();
        
                  
            
            
            
            
  %>
        </div>
  
     
    
        <table id="customers">
          <tbody>
            <TR>
                
                
                <TH style="background-color: #4CAF50">A/C No.</TH>
                <TH style="background-color: #4CAF50">Dr/Cr</TH>
                <TH style="background-color: #4CAF50">Amount</TH>
                <TH style="background-color: #4CAF50">Specification</TH>
                <TH style="background-color: #4CAF50">Type</TH>
                <TH style="background-color: #4CAF50">Date</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                
                <TD> <%= rs.getLong(1) %></td>
                 
                <TD> <%= rs.getString(2) %></td>
                
                <TD> <%= rs.getLong(3) %></td>
               
                <TD> <%= rs.getString(4) %></td>
                
                <TD> <%= rs.getString(5) %></td>
                
                
               
                <TD> <%= rs.getDate(6) %></TD>
                
               
                
                
            </TR>
           
            <% } %>
             <% } %>
             
          </tbody>
        </TABLE>
        

</body>
</html>
</div>






     </div>
<div id="footer">
Copyright ? BANK OF BARODA
</div>
  
        
        
        
        
        
       
    </body>
</html>




