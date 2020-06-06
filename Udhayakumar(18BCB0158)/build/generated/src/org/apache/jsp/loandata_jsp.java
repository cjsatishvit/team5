package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class loandata_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            table,td,th,h1{\n");
      out.write("                border: 1.5px solid black;\n");
      out.write("                border-collapse: collapse;\n");
      out.write("            }\n");
      out.write("            th{\n");
      out.write("                font-weight: bold;\n");
      out.write("                font-size: x-large;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                font-size: large;\n");
      out.write("                padding-left: 5px;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("            h1{\n");
      out.write("                background-color: lightblue;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                padding-bottom: 10px;\n");
      out.write("                padding-top: 10px;\n");
      out.write("            }\n");
      out.write("            body{\n");
      out.write("                background-color: rgb(250,250,250);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>LOAN DETAILS</h1>\n");
      out.write("        <table style=\"width: 600px;height: 200px;\">\n");
      out.write("            <tr style=\"background-color: lightblue\">\n");
      out.write("                <th>ID</th>\n");
      out.write("                <th>NAME</th>\n");
      out.write("                <th>LOAN TYPE</th>\n");
      out.write("                <th>AMOUNT</th>\n");
      out.write("                <th>MOBILE</th>\n");
      out.write("                <th>ACCOUNT</th>\n");
      out.write("                <th>EMI</th>\n");
      out.write("                <th>CREDIT SCORE</th>\n");
      out.write("            </tr>\n");
      out.write("            \n");
      out.write("            ");

            
                 Connection conn=null;
                 Statement st=null;
                 ResultSet rs=null;
                 
                 try
                 {
                     Class.forName("com.mysql.jdbc.Driver");
                     conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptutorial","root","");
                     st=conn.createStatement();
                     
                     String qry="select id,name,loan,amount,mobile,account,emi,score from loan";
                     rs=st.executeQuery(qry);
                     
                     while(rs.next())
                     {
                         
      out.write("\n");
      out.write("                         <tr>\n");
      out.write("                             <td>");
      out.print(rs.getString(1) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(2) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(3) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(4) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(5) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(6) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(7) );
      out.write("</td>\n");
      out.write("                             <td>");
      out.print(rs.getString(8) );
      out.write("</td>\n");
      out.write("                         </tr>\n");
      out.write("                         ");

                     }

                  }
                 catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <a href=\"manager.jsp\" class=\"btn btn-primary\">BACK</a>\n");
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
