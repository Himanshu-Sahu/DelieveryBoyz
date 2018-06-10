package league;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Update extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
                        
        PrintWriter out = response.getWriter();
        String unam = request.getParameter("unm");
        String insti = request.getParameter("inst");
        String mobile = request.getParameter("mob");
        String uid = (String) request.getSession().getAttribute("userId");
                request.getSession().setAttribute("unm",unam);
                request.getSession().setAttribute("inst",insti);
                request.getSession().setAttribute("mob",mobile);
                request.setAttribute("upd", "1");


        try{
            Connection con = (Connection)request.getServletContext().getAttribute("mycon");
            PreparedStatement ps;
            ps = con.prepareStatement("update users set unm=?,inst=?,mobile=? where uid=?");                        
            ps.setString(1, unam);                                                
            ps.setString(2, insti);
            ps.setString(3, mobile);                                  
            ps.setString(4, uid);
 ps.executeUpdate();
request.getRequestDispatcher("profile.jsp").forward(request, response);
                    
        }
        catch(SQLException e){
        }
          finally{
        out.close();    
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
