package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class courier_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script type=\"text/javascript\" src=\"Content/jquery-3.1.1.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"Content/jquery.colorbox.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle7.css\"/>\n");
      out.write("        <script type=\"text/javascript\" src=\"myjquery5.js\"></script>\n");
      out.write("        <title>Anything</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home.jsp", out, false);
      out.write("\n");
      out.write(" <div></div>\n");
      out.write(" <div class=\"store_custom\">\n");
      out.write("     <div class=\"store_custom_text\">What do you want?</div>\n");
      out.write("     <textarea id=\"textarea\" placeholder=\"What would you like to send? Please, take in consideration that our glovers use bikes. Check our conditions in terms of sizes and weight.\"></textarea>\n");
      out.write(" </div>\n");
      out.write(" \n");
      out.write(" <div id=\"order_action\">\n");
      out.write("     <div id=\"side_confirm\">\n");
      out.write("         <div id=\"side_confirm_text\">You added product to your cart!</div>\n");
      out.write("         <div id=\"navigation\">\n");
      out.write("             <div class=\"navigation_menu\"><a href=\"Order.jsp\"><button>Menu</button></a></div>\n");
      out.write("             <div class=\"navigation_menu\" id=\"finish\"><button>Finish</button></div>\n");
      out.write("         </div>\n");
      out.write("     </div>\n");
      out.write(" </div>\n");
      out.write("\n");
      out.write("<div class=\"store_delivery_limits\">\n");
      out.write("    <div class=\"store_delivery_limits_title\">Delivery F.A.Q.</div>\n");
      out.write("        <div class=\"store_delivery_limits_item\">\n");
      out.write("            <div class=\"store_delivery_limits_item_icon\">\n");
      out.write("                     <div class=\"glv icon1\"></div>          \n");
      out.write("            </div>\n");
      out.write("            <div class=\"store_delivery_limits_item_text\">Delivery Boyz use motorbikes or bicycles and can bring up to 9kg of weight. They are strong, but not so much!</div>            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"store_delivery_limits_item\">\n");
      out.write("            <div class=\"store_delivery_limits_item_icon\">\n");
      out.write("                <div class=\"glv icon2\"></div>          \n");
      out.write("            </div>\n");
      out.write("            <div class=\"store_delivery_limits_item_text\">Our box is yellow and cool, but only allows a maximum volume of 40x40x30cm!</div>     \n");
      out.write("        </div>\n");
      out.write("        <div class=\"store_delivery_limits_item\">\n");
      out.write("            <div class=\"store_delivery_limits_item_icon\">\n");
      out.write("                <div class=\"glv icon3\"></div>               \n");
      out.write("            </div>\n");
      out.write("            <div class=\"store_delivery_limits_item_text\">Even if we try to make any kind of orders, there are certain limits. No drugs and no animals. We'd love to be able to take your turtle or your snake, but for now we do not offer this type of service. We hope that in the future we can do so...</div>  \n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"store_custom_questions\">\n");
      out.write("<div class=\"store_custom_questions_wrapper\">\n");
      out.write("<div class=\"store_custom_questions_title\">How do I do an order?</div>\n");
      out.write("<div class=\"store_custom_questions_answer\">\n");
      out.write("    Ordering is very easy! You only have to: \n");
      out.write("    <p>1. Choose a product of one of the categories…a difficult decision!</p>\n");
      out.write("    <p>2. Let us be surprised with your order if you ask for something else from the button “I want..”: a board game, for example.</p>\n");
      out.write("3. Or we can send or pick something up: keys, a bag, an envelope…\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"store_custom_questions_wrapper\">\n");
      out.write("<div class=\"store_custom_questions_title\">How do I make the payment?</div>\n");
      out.write("<div class=\"store_custom_questions_answer\">\n");
      out.write("    The payment takes place through our application and only once the service is performed. The Delivery Boyz will ask you to sign the delivery and then proceed to charge you for the service and the purchase, if there is any. \n");
      out.write("</div>    \n");
      out.write("</div>\n");
      out.write("<div class=\"store_custom_questions_wrapper\">\n");
      out.write("<div class=\"store_custom_questions_title\">When will my order arrive?</div>\n");
      out.write("<div class=\"store_custom_questions_answer\">As long as you have an assigned Delivery Boyz you can follow it in real time and communicate with him for any questions. If you do not have a Delivery Boyz assigned, your order remains in the system pending allocation. If large delays are anticipated you will see it with a yellow message at the top of the app. In any case, if you would like to cancel your order and there is no Delivery Boyz assigned you can do it yourself from the current order at no cost.\n");
      out.write("</div>    \n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("    \n");
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
