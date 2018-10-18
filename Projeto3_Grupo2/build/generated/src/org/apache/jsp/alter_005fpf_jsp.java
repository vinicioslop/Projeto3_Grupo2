package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.web.Db_pf;
import br.com.fatecpg.web.PessoaFisica;

public final class alter_005fpf_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/WEB-INF/jspf/header.jspf");
    _jspx_dependants.add("/WEB-INF/jspf/navbar.jspf");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("                <!--Cabeçalho-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Optional theme -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" \n");
      out.write("              integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <!-- Latest compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" \n");
      out.write("        integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"Css/style.css\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(max-width: 640px)\" href=\"max-640px.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(min-width: 640px)\" href=\"min-640px.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(orientation: portrait)\" href=\"portrait.css\">\n");
      out.write("<link rel=\"stylesheet\" media=\"(orientation: landscape)\" href=\"landscape.css\">");
      out.write("\n");
      out.write("        <!--Navbar-->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("   <nav class=\"navbar navbar-inverse\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span> \n");
      out.write("      </button>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li class=\"active\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"Pessoa_Fisica.jsp\">Pessoa Fisica</a></li>\n");
      out.write("        <li><a href=\"Pessoa_Juridica.jsp\">Pessoa Juridica</a></li> \n");
      out.write("        <li><a href=\"Veiculo.jsp\">Manutenção de Veiculos</a></li> \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Alterar - Pessoa Física</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    ");
int i = Integer.parseInt(request.getParameter("i"));
      out.write("\n");
      out.write("    ");
PessoaFisica npf = Db_pf.getPessoaFisicas().get(i);
      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <h1>Cadastro de Pessoa Física</h1>\n");
      out.write("        <h2>Alterar</h2>\n");
      out.write("        ");

            if(request.getParameter("alterPF")!=null){
                npf.setNome(request.getParameter("nome"));
                npf.setCpf(request.getParameter("cpf"));
                npf.setEmail(request.getParameter("email"));
                npf.setTel_pf(request.getParameter("tel_pf"));
                Db_pf.getPessoaFisicas().set(i,npf);
                response.sendRedirect("Pessoa_Fisica.jsp");
            }
        
      out.write("\n");
      out.write("        <form>\n");
      out.write("            Indice: ");
      out.print( i );
      out.write("<br/><br/>\n");
      out.write("            <input type=\"hidden\" name=\"i\" value=\"");
      out.print(i);
      out.write("\"/>\n");
      out.write("            Nome:<br/><input type=\"text\" name=\"nome\" value=\"");
      out.print(npf.getNome());
      out.write("\"/><br/>\n");
      out.write("            Nome:<br/><input type=\"text\" name=\"cpf\" value=\"");
      out.print(npf.getCpf());
      out.write("\"/><br/>\n");
      out.write("            Email:<br/><input type=\"text\" name=\"email\" value=\"");
      out.print(npf.getEmail());
      out.write("\"/><br/>\n");
      out.write("            Telefone:<br/><input type=\"text\" name=\"tel_pf\" value=\"");
      out.print(npf.getTel_pf());
      out.write("\"/><br/>\n");
      out.write("            <br/><input type=\"submit\" name=\"alterPF\" value=\"Alterar\"/>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
