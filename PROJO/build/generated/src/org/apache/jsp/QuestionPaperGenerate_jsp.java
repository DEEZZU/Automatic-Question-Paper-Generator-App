package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import aqpg.SubjectDAO;
import java.util.*;
import aqpg.SubjectBean;

public final class QuestionPaperGenerate_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>Question Paper Generate</title>\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Average|Courgette' rel='stylesheet' type='text/css'>\n");
      out.write("    <link rel='stylesheet' href=\"template.css\" type=\"text/css\">\n");
      out.write("</head>\n");
      out.write("<body id=\"bg\" background=\"BG3.jpg\" margin=\"auto\" >\n");
      out.write("    ");

            ArrayList<SubjectBean> List=new ArrayList<SubjectBean>();
            List=SubjectDAO.displaySubject();
            int size;
            size=List.size();
            //out.println("hERE"+size);
    
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"header h1\">\n");
      out.write("            <h1><span class=\"h1\" style=\"font-weight:bold;font-size:70px;font-family:georgia,palatino,book antiqua,palatino linotype,serif;\">\n");
      out.write("                    Automatic Question Paper Generator</span></h1>\n");
      out.write("                <span class=\"menu\">                        \n");
      out.write("                <table border='0' cellpadding='0' cellspacing='15' valign=\"left\" style=\"overflow:auto;text-align:center;margin:auto;\">\n");
      out.write("                    <tr><td><a href=\"\"><input type=\"button\" value=\"Question Paper Generate\" style=\"width:220px;\"></a></td>                                \n");
      out.write("                        <td><a href=\"Profile.jsp\"><input type=\"button\" value=\"Profile\" style=\"width:80px;\"></a></td> \n");
      out.write("                        <td><a href=\"InstructorModify.jsp\"><input type=\"button\" value=\"Modify\" style=\"width:80px;\"></a></td>\n");
      out.write("                        <td><a href=\"\"><input type=\"button\" value=\"Doubt Request\" style=\"width:130px;\"></a></td>\n");
      out.write("                        <td><input type=\"button\" value=\"Logout\" style=\"width:80px;\"></td></tr>\n");
      out.write("                 </table> <!--Table End-->\n");
      out.write("                </span>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"base\">\n");
      out.write("           <div class=\"des1\">                        \n");
      out.write("             <div class=\"des2\">   \n");
      out.write("                <h4 class=\"font_1\" style=\"margin:auto;\"><span>Instructor! Kindly enter the details of question paper you want to generate</span></h4>                     \n");
      out.write("                <form action=\"ProcessPaper.jsp\" >                    \n");
      out.write("                   <table  border='0' cellpadding='0' cellspacing='25px' style=\" width:700px;overflow:auto;text-align:center;margin:auto;\">\n");
      out.write("                                <tr><td><input type=\"text\" id=\"TI\" name=\"Title\" placeholder=\"Title\"></td>\n");
      out.write("                                    <td><input type=\"text\" id=\"TR\" name=\"Time_required\" placeholder=\"Time Required\"></td> \n");
      out.write("                                    <td><input type=\"text\" id=\"TM\" name=\"Total_Marks\" placeholder=\"Total Marks\"></td></tr>\n");
      out.write("                                <tr><td><input type=\"text\" id=\"LE\" name=\"level_easy\" placeholder=\"Level Easy(In %)\"></td>\n");
      out.write("                                    <td><input type=\"text\" id=\"LM\" name=\"level_medium\" placeholder=\"Level Medium(In %)\"></td> \n");
      out.write("                                    <td><input type=\"text\" id=\"LH\" name=\"level_hard\" placeholder=\"Level Hard(In %)\"></td></tr>\n");
      out.write("                   </table>\n");
      out.write("                               \n");
      out.write("                   <table border='0' cellpadding='0' cellspacing='25px' style=\" width:700px;overflow:auto;text-align:center;margin:auto;\"> \n");
      out.write("                                <tr><td>\n");
      out.write("                                    ");

                                      for(int i=0; i<size;i++){
                                    
      out.write("\n");
      out.write("                                    <td><span><input type=\"checkbox\" name=\"subject\" value=\"");
      out.print((List.get(i).getCname()));
      out.write("\"/><br></span>\n");
      out.write("                                    <label style=\"font-size: 15px; font-weight: bold;\">");
      out.print(List.get(i).getCname());
      out.write("</label>\n");
      out.write("                                    </td>");
}
      out.write("</td></tr>                                        \n");
      out.write("                                <tr><td colspan=\"9\"><input type=\"submit\" value=\"SUBMIT\"></td></tr>                                           \n");
      out.write("                   </table>\n");
      out.write("                </form>  \n");
      out.write("            </div>  <!--des1 End-->  \n");
      out.write("         </div>  <!--des1 End-->\n");
      out.write("       </div>  <!--Base end-->    \n");
      out.write("    </div> <!--Container End-->\n");
      out.write("</body>\n");
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
