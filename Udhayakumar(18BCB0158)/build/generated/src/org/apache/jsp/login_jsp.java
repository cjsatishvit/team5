package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Login Page</title>\n");
      out.write("        <style>\n");
      out.write("            div\n");
      out.write("            {\n");
      out.write("                background-color: lightgray;\n");
      out.write("                width: 250px;\n");
      out.write("                border: 15px solid green;\n");
      out.write("                padding: 50px;\n");
      out.write("                margin: 20px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("\t<h1 style=\"color: blue\">LOGIN</h1>\n");
      out.write("\t<a href=\"signup.jsp\" style=\"color: red;text-align: right;padding-left: 200px\">Sign up</a>\n");
      out.write("\t<form action=\"loginjava.jsp\" method=\"post\">\n");
      out.write("            <label>USER NAME:</label><br>\n");
      out.write("            <input type=\"text\" name=\"uname\" required><br>\n");
      out.write("\t    <br>\n");
      out.write("\t    <label>PASSWORD:</label><br>\n");
      out.write("            <input type=\"password\" name=\"pwd\" required><br>\n");
      out.write("\t    <a href=\"forgot.jsp\" style=\"color: red;padding-left: 30px\">Forgot password?</a><br>\n");
      out.write("            <br>\n");
      out.write("\t    <input type=\"submit\" value=\"Login\">\n");
      out.write("\t</form>\n");
      out.write("        </div>\n");
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
