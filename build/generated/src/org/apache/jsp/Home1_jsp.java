package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("   \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"myjquery2.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle5.css\">\n");
      out.write("        <title>Home</title>\n");
      out.write("         <script type=\"text/javascript\">\n");
      out.write("             function check() {\n");
      out.write("  var xhttp = new XMLHttpRequest();\n");
      out.write("  var v=document.getElementById(\"add\").value;\n");
      out.write("  xhttp.onreadystatechange = function() {\n");
      out.write("    if (xhttp.readyState == 4 && xhttp.status == 200) {\n");
      out.write("      document.getElementById(\"address\").innerHTML = this.responseText;   \n");
      out.write("        }   \n");
      out.write("  };\n");
      out.write("  xhttp.open(\"GET\", \"CheckAddress?addr=\"+v, true);\n");
      out.write("  xhttp.send();\n");
      out.write("}\n");
      out.write("\n");
      out.write("    function confirm(){\n");
      out.write("        var v = document.getElementById(\"add\").value;\n");
      out.write("        var i = 0;\n");
      out.write("        var a;\n");
      out.write("        if(v == \"\"){\n");
      out.write("                    document.getElementById(\"add\").style.border = \"2px solid red\";\n");
      out.write("                    }\n");
      out.write("        for( i=0;i<document.getElementsByTagName(\"option\").length;i++){\n");
      out.write("         a = document.getElementsByTagName(\"option\")[i].innerHTML;\n");
      out.write("        if(a == v){\n");
      out.write("            window.location.assign(\"SaveAddress?addr=\"+a);  \n");
      out.write("        return;\n");
      out.write("            }\n");
      out.write("    }\n");
      out.write("    if(a!=v)\n");
      out.write("                    document.getElementById(\"add\").style.border = \"2px solid red\";\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"first\">\n");
      out.write("        <div id=\"tagline\"><p>Anything Anytime Anywhere.</p><p>Delivered in minutes.</p></div>\n");
      out.write("        <div id=\"addressCheck\">\n");
      out.write("            <input type=\"text\" value=\"Indore\" disabled size =10 id=\"indore\">\n");
      out.write("            <i> <input list=\"address\" placeholder=\"Enter an area\" name=\"addr\" required id=\"add\" size=50 onkeyup=\"check()\"></i>\n");
      out.write("            <datalist id =\"address\">\n");
      out.write("            </datalist>\n");
      out.write("            <input type=\"button\" value=\"GET STARTED!\" onclick=\"confirm()\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"steps\">Get your favorite food in 4 simple steps.<span id=\"magic\" style=\"color:black;cursor:pointer\">  See how  </span></div>\n");
      out.write("        <div id=\"stepsShow\">\n");
      out.write("            <ul>\n");
      out.write("                <li class=\"step one\">\n");
      out.write("                    <div>\n");
      out.write("                        <div><img src=\"Content/search.png \" width = 81 height= 83 /></div>\n");
      out.write("                        <div class=\"title\">1. Search</div>\n");
      out.write("                        <div class=\"description\">Find Items that deliver to you by entering your address</div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"step two\">\n");
      out.write("                    <div>\n");
      out.write("                        <div><img src=\"Content/list.png \" width = 81 height= 83 /></div>\n");
      out.write("                        <div class=\"title\">2. Choose</div>\n");
      out.write("                        <div class=\"description\">Browse hundreds of menus to find the thing you like</div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"step three\">\n");
      out.write("                    <div>\n");
      out.write("                        <div><img src=\"Content/pay.png \" width = 81 height= 83 /></div>\n");
      out.write("                        <div class=\"title\">3. Pay</div>\n");
      out.write("                        <div class=\"description\">Pay fast &amp; secure online or on delivery</div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"step four\">\n");
      out.write("                    <div>\n");
      out.write("                        <div><img src=\"Content/enjoy.png \" width = 81 height= 83 /></div>\n");
      out.write("                        <div class=\"title\">4. Enjoy</div>\n");
      out.write("                        <div class=\"description\">Item delivered to your door</div>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script src=\"https://www.gstatic.com/firebasejs/4.3.0/firebase.js\"></script>\n");
      out.write("<script>\n");
      out.write("  // Initialize Firebase\n");
      out.write("  var config = {\n");
      out.write("    apiKey: \"AIzaSyA6bV0KiqnPLfTZrLSXZiTOwrChhJ8J7vo\",\n");
      out.write("    authDomain: \"delivery-boyz.firebaseapp.com\",\n");
      out.write("    databaseURL: \"https://delivery-boyz.firebaseio.com\",\n");
      out.write("    projectId: \"delivery-boyz\",\n");
      out.write("    storageBucket: \"\",\n");
      out.write("    messagingSenderId: \"697091805462\"\n");
      out.write("  };\n");
      out.write("  firebase.initializeApp(config);\n");
      out.write("</script>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
