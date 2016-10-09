/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Avdesh Tyagi
 */
public class Appro1 extends HttpServlet {

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
           
            String Name=request.getParameter("t1");
Long acno=Long.parseLong(request.getParameter("t2"));

String type=request.getParameter("t3");
Long dcno=Long.parseLong(request.getParameter("t4"));
Long ccno=Long.parseLong(request.getParameter("t5"));
Long cno=Long.parseLong(request.getParameter("t6")); 
//Date date11=Date.valueOf(request.getParameter("t7"));

          
          
          try {
             
              
            Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            
            Calendar calendar = Calendar.getInstance();
            
    java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());
            
            Statement st = con.createStatement();
            
                     java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
             
                 String INSERT_RECORD = "insert into REQUESTAPPROVED11(name,acno,type,dcno,ccno,cno,date2)values(?,?,?,?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(INSERT_RECORD);
    ps = con.prepareStatement(INSERT_RECORD);
    ps.setString(1,Name);
    ps.setLong(2,acno);
    ps.setString(3,type);
    ps.setLong(4,dcno);
     ps.setLong(5,ccno);
      ps.setLong(6,cno);
    
    //java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
    ps.setDate(7, sqlDate);
    
    int j=ps.executeUpdate();
                    
               if(j>0){  
             
                 //response.sendRedirect("viewrequestemp.jsp");
           RequestDispatcher rd1=request.getRequestDispatcher("./viewrequestemp.jsp");
                        rd1.include(request,response);  
        
        }
                 }
          
     
                  
            
        
   

        catch (Exception eh)
                {
                System.out.println(eh);
                }
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Appro1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Appro1 at " + request.getContextPath() + "</h1>");
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
