package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class LearnerMainPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel='stylesheet' href=\"template.css\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body id=\"bg\" background=\"BGL1.jpg\" margin=\"auto\" >\n");
      out.write("        <div class=\"container\">\n");
      out.write("           <div class=\"header h1\">\n");
      out.write("                <h1><span class=\"h1\" style=\"color:#113B2A;font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;\">\n");
      out.write("                    Automatic Question Paper Generator</span></h1>\n");
      out.write("           </div>\n");
      out.write("           <div class=\"base\">\n");
      out.write("                    <div class=\"welcome\">\n");
      out.write("                       <h2><span>Welcome  Learner!!! </span></h2>                      \n");
      out.write("                    <span><a href=\"Learner.jsp\"><input type=\"button\" value=\"Let's see what you want to do\" style=\"width:200px;\"/>  </a><span> \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"box\">                        \n");
      out.write("                     <table border='0' cellpadding='0' cellspacing='20' valign=\"left\" width='240px'style=\"width:240px;overflow:auto;text-align:center;margin:auto;\">\n");
      out.write("                         <tr><td><a href=\"PracticeChoice.jsp\"><input type=\"button\" value=\"Practise\"></a></td></tr>                                \n");
      out.write("                         <tr><td><a href=\"LearnerProfile.jsp\"><input type=\"button\" value=\"Profile\"></a></td></tr>  \n");
      out.write("                                <tr><td> <input type=\"button\" value=\"Grade\">                             \n");
      out.write("                               <tr><td><input type=\"button\" value=\"Doubts\"></td></tr>\n");
      out.write("                               <tr><td><input type=\"button\" value=\"Logout\"></td></tr>\n");
      out.write("                    </table> <!--Table End-->\n");
      out.write("                   </div>  <!--Box End-->\n");
      out.write("           </div>  <!--Base end-->    \n");
      out.write("      </div> <!--Container End-->\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("    \n");
      out.write("           </div>\n");
      out.write("        </div>\n");
      out.write("    </body> \n");
      out.write("</html>");
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
