/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Avdesh Tyagi
 */
public class DiffIP extends HttpServlet {

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
            
            
            
              HttpSession session = request.getSession(true);
              String passw=(String)session.getAttribute("pass1");
      Long acnu=(Long)session.getAttribute("acno1");
      String uname=(String)session.getAttribute("uname1");
      
        String b= request.getParameter("Login");
        
        
        try{
            
            
            
             Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            //Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            
            Statement st = con.createStatement();
            ResultSet rs;
            
        if ("1".equals(b)) { 
        response.sendRedirect("EnterIPPassword.html");
        }
        else if ("2".equals(b)) { 
            
        
            Otp2 ar=new Otp2();
            String OTP=ar.generateRandomString();
            
        
            
       String  sql = "SELECT email FROM Account1" +
                   " WHERE acno = " + acnu;
                     rs = st.executeQuery(sql);
      //STEP 5: Extract data from result set
      while(rs.next()){
         //Retrieve by column name
        
         String email=rs.getString("email");
           
            
            
            
            
            
            String to=""+email +"";//change accordingly  
   String Subject="ONE TIME PASSWORD";
   String Message="Your OTP IS  =  "+OTP;
   String user="bankofbaroda05@gmail.com";
   String pass="searmaan0573";
   SendMail.send(to,Subject, Message, user, pass);
  
            
            
            
            
            
            
            
            
            
            
            
            
            
            
          session.setAttribute("otppass",OTP);  
            
            
            
            
            
            
            
            
        response.sendRedirect("EnterOTPPass.html");
        
        }
        
        
        }
        }
            
            
            
            
          catch (Exception e)
                {
                System.out.println(e);
                }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DiffIP</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DiffIP at " + request.getContextPath() + "</h1>");
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
