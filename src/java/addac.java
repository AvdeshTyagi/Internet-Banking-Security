/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.*;
import javax.servlet.RequestDispatcher;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Avdesh Tyagi
 */
public class addac extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
              String fname=request.getParameter("t1");
    String lname=request.getParameter("t2");
     Long acno=Long.parseLong(request.getParameter("t3"));
     String email=request.getParameter("t4");
     Long mob=Long.parseLong(request.getParameter("t5"));
     String add=request.getParameter("t6");
     String passe=request.getParameter("t7");
    String message="Account Added Successfully";
     
           
            
           
            try{
                 HttpSession session=request.getSession(true);  
      String name=(String)session.getAttribute("Uname");
      String pass=(String)session.getAttribute("Pass");    
      if(passe.equals(pass)){
                 Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
         ResultSet rsdoLogin = null;
    PreparedStatement psdoLogin=null;
         
        
    
   
      
     String INSERT_RECORD = "insert into Account1(fname,lname,acno,address,mob,email)values(?,?,?,?,?,?)";
    
    //PreparedStatement pstmt = conn.prepareStatement(INSERT_RECORD);
    psdoLogin=conn.prepareStatement(INSERT_RECORD);
    //pstmt.setString(1,name);
   
    //pstmt.executeUpdate();
     psdoLogin.setString(1,fname);
         psdoLogin.setString(2,lname);
         psdoLogin.setLong(3,acno);
         psdoLogin.setString(4,add);
         psdoLogin.setLong(5,mob);
         psdoLogin.setString(6,email);
         
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
                System.out.println(e);
            }
            
            
            
            
            
            
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addac</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addac at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
