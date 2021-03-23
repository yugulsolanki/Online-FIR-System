package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Online FIR</title>\n");
      out.write("        <style>\n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                color: white;\n");
      out.write("                font-size: 25px;\n");
      out.write("            }\n");
      out.write("            a:hover{\n");
      out.write("                background-color: white;\n");
      out.write("                color: crimson;\n");
      out.write("            }\n");
      out.write("            .navi{\n");
      out.write("                background-color:crimson;\n");
      out.write("                width: 100%;\n");
      out.write("                heigth: 120px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            td{\n");
      out.write("                border-radius: 20px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header-->\n");
      out.write("        <div>\n");
      out.write("        <div style=\"\"><img src=\"logo1.jpg\" width=\"100%\" height=\"350px\" align=\"center\"></div>\n");
      out.write("        <!--\n");
      out.write("        -->\n");
      out.write("        </div>\n");
      out.write("        <hr>\n");
      out.write("        <!--navigation-->\n");
      out.write("        <div>\n");
      out.write("            <table class=\"navi\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"Home.jsp\">Home</a></td>\n");
      out.write("                    <td><a href=\"\">Cyber Crime</a></td>\n");
      out.write("                    <td><a href=\"\">Advocte</a></td>\n");
      out.write("                    <td><a href=\"\">Laws</a></td>\n");
      out.write("                    <td><a href=\"\">Help</a></td>\n");
      out.write("                    <td><a href=\"Logout.jsp\">Logout</a></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!--body-->\n");
      out.write("        <div style='background-color: lightblue; width:70%; height: 100%; margin-left: 15%;'>\n");
      out.write("            <div>\n");
      out.write("                <form action=\"Logincode.jsp\">\n");
      out.write("        <table align=\"center\" border=\"0\" border-radius=\"20\" font-size=\"20px\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Username</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><input type=\"text\" name=\"userid\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Password</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><input type=\"password\" name=\"pass\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Login As</td>       \n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><select name=\"post\">\n");
      out.write("                                <option>select</option>\n");
      out.write("                                <option>Admin</option>\n");
      out.write("                                <option>Police</option>\n");
      out.write("                                <option>User</option>\n");
      out.write("                    </select></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\"><input type=\"submit\" value=\"Login\"></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"Forgetpass.jsp\">Forgot Password</a></td>\n");
      out.write("                <td><a href=\"Changepass.jsp\">Change Password</a></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <hr>\n");
      out.write("        <!--footer-->\n");
      out.write("        <div style=\"background-image: url('bottom.jpg'); width: 100%; height: 230px;\">\n");
      out.write("            <div align=\"center\" style='padding-top: 80px;'>\n");
      out.write("                <table style=\"color: crimson; font-size: 23px;\">\n");
      out.write("                    <tr>\n");
      out.write("                        <td></td>\n");
      out.write("                        <td colspan=\"2\" align=\"center\">FOR ANY QUERY PLEASE CONTACT:</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><a href=\"mailto:\">onlinefir@gmail.com</a></td>\n");
      out.write("                        <td></td><td></td>\n");
      out.write("                        <td>8989898989</td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            \n");
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
