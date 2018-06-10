package league;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String uid = request.getParameter("uid1");
        String pass = request.getParameter("pass1");

        try  {
                Connection con = (Connection) this.getServletContext().getAttribute("mycon");
                PreparedStatement ps = con.prepareStatement("select * from users where uid=? and pass=?");
                ps.setString(1, uid);
                ps.setString(2, pass);
                ResultSet rs = ps.executeQuery();
                boolean found = rs.next();
                String unm = rs.getString(1);
                String mobile = rs.getString(2);
                String inst = rs.getString(3);
                String userId = rs.getString(4);
                String userPass = rs.getString(5);

//request.getServletContext().setAttribute("unm", unm);
                
                
                
                if(found)
                {   
                    request.getSession().setAttribute("upd", "0");
                    request.getSession().setAttribute("chn", "0");
                    request.getSession().setAttribute("unm",unm);
                    request.getSession().setAttribute("mobile",mobile);
                    request.getSession().setAttribute("inst",inst);
                    request.getSession().setAttribute("userId",userId);
                    request.getSession().setAttribute("userPass",userPass);
                    request.getSession().setAttribute("performCheck","yes");
                    response.sendRedirect("Home1.jsp");
                }
                    else
                    out.println("login.jsp");
                
        }
    catch(SQLException se){
                            response.sendRedirect("welcome.jsp");
     out.println(se);
    }
    finally{
        out.close();    
}
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold
}
