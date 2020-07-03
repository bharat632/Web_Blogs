/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlet;

import com.connection.connectionProvider;
import static com.connection.connectionProvider.con;
import com.database.user_data;
import com.entities.message;
import com.entities.user;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Bharat
 */
public class update extends HttpServlet {

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
            out.println("<title>Servlet update</title>");            
            out.println("</head>");
            out.println("<body>");
           
            //update profile
            String user_name=request.getParameter("user_name");
            String user_pass=request.getParameter("user_password");
            String user_mobile=request.getParameter("user_mobile");
            String user_desc=request.getParameter("user_desc");
            
            //get the user from the session
            
            HttpSession s=request.getSession();
            user user= (user)s.getAttribute("currentuser");
            
            user.setUsername(user_name);
            user.setPassword(user_pass);
            user.setPhone(user_mobile);
            user.setDescription(user_desc);
            
            //update database
            
            user_data userdata=new user_data(connectionProvider.getConnection());
            
            boolean ans= userdata.updateUser(user);
            
            if(ans)
            {
                message msg=new message("Update Successfully ..","success","alert-success");
                
                
                s.setAttribute("msg",msg);

            }
            else{
                
                message msg=new message("Something went wrong ..","error","alert-danger");
                
                
                s.setAttribute("msg",msg);
             
            }
            
            
            response.sendRedirect("data_view.jsp");
            
            
            
            
            
            
            
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
