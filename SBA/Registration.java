/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
@MultipartConfig
@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet {
    private String email;
    private String Encryptpass;

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registration</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registration at " + request.getContextPath() + "</h1>");
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
        String name=request.getParameter("name");
        String fname=request.getParameter("fname");
        String mob=request.getParameter("mob");
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        EncryptionManager em=new EncryptionManager();
        String EncryptPass=em.encryptData(pass);
        String gender=request.getParameter("gender");
        String checkGender="";
        if(gender.equals("Male"))
            checkGender="Male";
        else
            checkGender="Female";
        String quali=request.getParameter("quali");
        Date dt=new Date();
       java.sql.Date d=new java.sql.Date(dt.getTime());
       String captcha=request.getParameter("hdn1");
       String ConfirmCaptcha=request.getParameter("cc1");
       if(captcha.equals(ConfirmCaptcha))
       {
       String command1="insert into registration values('"+name+"','"+fname+"','"+mob+"','"+email+"','"+EncryptPass+"','"+checkGender+"','"+quali+"','"+d.toString()+"')";
       String command2="insert into login values('"+email+"','"+EncryptPass+"','user')";
       ConnectionManager cm=new ConnectionManager();
       PrintWriter out = response.getWriter();
       
       if(cm.ExecuteInsertUpdateOrDelete(command1))
       {
           if(cm.ExecuteInsertUpdateOrDelete(command2))
           {
             out.print("<script>alert('Your Registration completed successfully');window.location.href='Registration.html'</script>");  
           }
           else
           { 
                out.print("<script>alert('Login Failed');window.location.href='Registration.html'</script>"); 
           }
        }   
       
       else
       {
         out.print("<script>alert(' Your Registration is not completed');window.location.href='Registration.html'</script>");        
       }
       }
       else
       {
           PrintWriter out=response.getWriter();
           out.print("<script>alert('Invalid Captcha Code');window.location.href='../Registration.html'</script>"); 
       }
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
