package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Order_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Order</title>\n");
      out.write("                <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle6.css\">\n");
      out.write("                <script type=\"text/javascript\" src=\"myjquery5.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home.jsp", out, false);
      out.write("\n");
      out.write("        <div><h1>Quality never goes out of style</h1></div>\n");
      out.write("        <div id=\"list\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"orderList.jsp\"><div class=\"bor\" id=\"one\"></div><div class=\"bor\" id=\"two\"></div><div id=\"icon\"><div><img src=\"Content/anything.webp\" width=\"50\" height=\"50\" ></div><div>Anything</div></div></a></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/courier.webp\" width=\"50\" height=\"50\"></div><div>Courier</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/pharmacy.webp\" width=\"50\" height=\"50\"></div><div>Pharmacy</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/gift.webp\" width=\"50\" height=\"50\"></div><div>Gifts</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/snacks.webp\" width=\"50\" height=\"50\"></div><div>Snacks Juices</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/stationery.png\" width=\"50\" height=\"50\"></div><div>Stationery</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/restaurant.webp\" width=\"50\" height=\"50\"></div><div>Restaurants</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/sweet.webp\" width=\"50\" height=\"50\"></div><div>Sweet Treats</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/market.webp\" width=\"50\" height=\"50\"></div><div>Market</div></div></li>\n");
      out.write("                <li><div class=\"one\"></div><div class=\"two\"></div><div id=\"icon\"><div><img src=\"Content/cloth.png\" width=\"50\" height=\"50\"></div><div>Clothes</div></div></li>\n");
      out.write("\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
