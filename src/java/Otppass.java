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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Avdesh Tyagi
 */
public class Otppass extends HttpServlet {

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
            
            
            
             String userN=request.getParameter("c1");
          String userO=request.getParameter("c2");
          
             
            
             try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
           
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","armaan8886");
            Statement st = con.createStatement();
            ResultSet rs;
            
            
            
            
            HttpSession session = request.getSession(true);
              String pass=(String)session.getAttribute("pass1");
      Long acnu=(Long)session.getAttribute("acno1");
      String uname=(String)session.getAttribute("uname1");
      String otp=(String)session.getAttribute("otppass");
      
      
      
       if(userO.equals(otp)&&userN.equals(uname)){
            
            
                      
                      RequestDispatcher rd1=request.getRequestDispatcher("./newwel.html");
                        rd1.include(request,response);   
                    
                  
                        
                  }
                
                 
                  else
                  {
                        out.println("<center><h2>Invalid OTP  Enter Correct OTP</h2></center>");
                        RequestDispatcher rd2=request.getRequestDispatcher("./EnterOTPPass.html");
                        rd2.include(request,response);
                       
                  }
                  
            }
        


        catch (Exception e)
                {
                System.out.println(e);
                }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Otppass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Otppass at " + request.getContextPath() + "</h1>");
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
