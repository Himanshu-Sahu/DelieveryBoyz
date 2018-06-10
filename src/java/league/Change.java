package league;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Change extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String msg="";
                PrintWriter out = response.getWriter();
            String pass = (String) request.getParameter("pass");
           String newp = (String) request.getParameter("new_pass");
           String confp =  (String) request.getParameter("conf_pass");
           String uid = (String) request.getSession().getAttribute("userId");
           
           Connection con = (Connection) request.getServletContext().getAttribute("mycon");
        try  {
           request.setAttribute("chn", "1");
           request.setAttribute("color","red");
           if((pass.isEmpty() || newp.isEmpty()) || confp.isEmpty()){
               request.getSession().setAttribute("msg","Please Enter All Fields");
           }
           else{
               PreparedStatement ps;
               ps = con.prepareStatement("select pass from users where uid = ?");
               ps.setString(1,uid);
               ResultSet rs = ps.executeQuery();
               rs.next();
               String oldpass = rs.getString(1);
               if(oldpass.equals(pass)){
                   if(newp.equals(confp)){
                       PreparedStatement ps1 = con.prepareStatement("update users set pass=? where uid = ?");
                       ps1.setString(1,newp);
                       ps1.setString(2, uid);
                       ps1.execute();
                       request.getSession().setAttribute("msg","Password Updated Successfully");
                       request.setAttribute("color","#29B387");
                   }
                   else
                       request.getSession().setAttribute("msg","New Password didn't match");
               }
               else{
                   request.getSession().setAttribute("msg","Password Didn't match");
               }
           }
request.getRequestDispatcher("password.jsp").forward(request, response);
        }
        catch(SQLException e){
            request.getSession().setAttribute("msg",e);
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
