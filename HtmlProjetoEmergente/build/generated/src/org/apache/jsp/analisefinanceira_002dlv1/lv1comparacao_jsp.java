package org.apache.jsp.analisefinanceira_002dlv1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelo.Lv1Resultado;
import dao.Passos;
import dao.UsuarioDAO;
import modelo.Usuario;
import modelo.Propriedade;
import dao.PropriedadeDAO;

public final class lv1comparacao_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(6);
    _jspx_dependants.add("/analisefinanceira-lv1/../jsp/testelogin.jsp");
    _jspx_dependants.add("/analisefinanceira-lv1/../jsp/testepropriedade.jsp");
    _jspx_dependants.add("/analisefinanceira-lv1/../jsp/testeano.jsp");
    _jspx_dependants.add("/analisefinanceira-lv1/../jsp/testepassos.jsp");
    _jspx_dependants.add("/analisefinanceira-lv1/../importacoes/cabecalho.jsp");
    _jspx_dependants.add("/analisefinanceira-lv1/../importacoes/subcabecalholv1.jsp");
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

      out.write('\n');
      out.write('\n');

    request.setCharacterEncoding("UTF-8");
    if (session.getAttribute("Usuario") == null) {
        response.sendRedirect("../index.jsp");
        return;
    }


      out.write('\n');

if(session.getAttribute("Propriedade_id") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');

if(session.getAttribute("Ano") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');

if(session.getAttribute("Passos") == null){
    response.sendRedirect("../index.jsp");
    return;
}


      out.write('\n');
      out.write('\n');
    Long id = Long.parseLong(session.getAttribute("Propriedade_id").toString());
    Integer ano = Integer.parseInt(session.getAttribute("Ano").toString());

    Passos passos = (Passos) session.getAttribute("Passos");

    Lv1Resultado lv1resultado = passos.getLv1resultadodao().media(id, ano);



      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


Usuario entroucomo= (Usuario) session.getAttribute("Usuario");

      out.write("\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta name=\"description\" content=\"\">\n");
      out.write("<meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("<title>S.I.S.A.F.E</title>\n");
      out.write("\n");
      out.write("<!-- Bootstrap Core CSS -->\n");
      out.write("<link href=\"../css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<!-- Custom CSS -->\n");
      out.write("<link href=\"../css/landing-page.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("<!-- Custom Fonts -->\n");
      out.write("<link href=\"../font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\n");
      out.write("<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/customizacao.css\">\n");
      out.write("\n");
      out.write("<!-- jQuery -->\n");
      out.write("<script src=\"../js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Bootstrap Core JavaScript -->\n");
      out.write("<script src=\"../js/bootstrap.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top topnav\" role=\"navigation\">\n");
      out.write("        <div class=\"container topnav\">\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <a class=\"navbar-brand topnav\" href=\"#\">S.I.S.A.F.E</a>\n");
      out.write("            </div>\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\n");
      out.write("                    <li>\n");
      out.write("                        <a>Entrou como: ");
      out.print(entroucomo.getLogin());
      out.write("</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"btn btn-success\" id=\"sair\" href=\"../propriedades/propriedades.jsp\">Propriedades</a>\n");
      out.write("\n");
      out.write("                    </li>\n");
      out.write("                    <li>\n");
      out.write("                        <a class=\"btn btn-danger\" id=\"sair\" href=\"../index.jsp\">Sair <span class=\"glyphicon glyphicon-log-out\"></span></a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!-- /.navbar-collapse -->\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("    </nav>");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');


        Propriedade p = new Propriedade();

        PropriedadeDAO dao = new PropriedadeDAO();
        p = dao.buscar(Integer.parseInt(session.getAttribute("Propriedade_id").toString()));
    


    
        

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"container conteudo\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12\">\n");
      out.write("            <h1 class=\"text-center\">Análise Financeira</h1>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-4  well well-sm text-center\">\n");
      out.write("            <h4>Propriedade: ");
      out.print(p.getNome());
      out.write("</h4>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-4 well well-sm text-center\">\n");
      out.write("            <h4>Ano: ");
      out.print(session.getAttribute("Ano").toString());
      out.write("</h4>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"col-md-4 well well-sm text-center\">\n");
      out.write("            <h4>Nivel: 1</h4>\n");
      out.write("        </div>\n");
      out.write("    </div>");
      out.write("\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("            <div id=\"grafico1\"></div>\n");
      out.write("            <div id=\"grafico2\"></div>\n");
      out.write("            <div id=\"grafico3\"></div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-md-6\">\n");
      out.write("            <div id=\"grafico4\"></div>\n");
      out.write("            <div id=\"grafico5\"></div>\n");
      out.write("            <div id=\"grafico6\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-12 text-center\">\n");
      out.write("            <a class=\"btn btn-lg btn-danger \" href=\"lv1resultados.jsp\">Voltar <span class=\"glyphicon glyphicon-backward\"></span></a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <table id=\"custohectare\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>");
      out.print(passos.getLv1resultado().getCustohectar());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(lv1resultado.getCustohectar());
      out.write("</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <table id=\"lotacaomedia\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>");
      out.print(passos.getLv1resultado().getLotacaomedia());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(lv1resultado.getLotacaomedia());
      out.write("</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <table id=\"receitahectare\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>");
      out.print(passos.getLv1resultado().getReceitahectar());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(lv1resultado.getReceitahectar());
      out.write("</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <table id=\"totalcustoproducao\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>");
      out.print(passos.getLv1resultado().getTotalcustoproducao());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(lv1resultado.getTotalcustoproducao());
      out.write("</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <table id=\"custoatividadedecria\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>3000</td>\n");
      out.write("                <td>5000</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("\n");
      out.write("    <table id=\"custoporterneirodesmamado\" class=\"hidden\" >\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>\n");
      out.write("\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Você\n");
      out.write("                </th>\n");
      out.write("                <th>\n");
      out.write("                    Outros\n");
      out.write("                </th>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("            <tr>\n");
      out.write("                <th>R$</th>\n");
      out.write("                <td>3000</td>\n");
      out.write("                <td>5000</td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"../js/highcharts.js\"></script>\n");
      out.write("<script src=\"../js/data.js\"></script>\n");
      out.write("<script src=\"../js/exporting.js\"></script>\n");
      out.write("<script>\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico1').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'custohectare'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Custo por Hectare'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'R$/HM²'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico2').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'lotacaomedia'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Lotação Media da Propriedade'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'Cabeças por Hectare'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico3').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'receitahectare'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Receita por Hectare'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'R$/HM²'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico4').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'totalcustoproducao'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Total Custo de Procução'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'R$'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico5').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'custoatividadedecria'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Custo Atividade de Cria'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'R$'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(function () {\n");
      out.write("        $('#grafico6').highcharts({\n");
      out.write("            data: {\n");
      out.write("                table: 'custoporterneirodesmamado'\n");
      out.write("            },\n");
      out.write("            chart: {\n");
      out.write("                type: 'column'\n");
      out.write("            },\n");
      out.write("            title: {\n");
      out.write("                text: 'Custo por Terneiro Desmamado'\n");
      out.write("            },\n");
      out.write("            yAxis: {\n");
      out.write("                allowDecimals: false,\n");
      out.write("                title: {\n");
      out.write("                    text: 'R$ por Terneiro Desmamado'\n");
      out.write("                }\n");
      out.write("            },\n");
      out.write("            tooltip: {\n");
      out.write("                formatter: function () {\n");
      out.write("                    return '<b>' + this.series.name + '</b><br/>' +\n");
      out.write("                            this.point.y + ' ' + this.point.name.toLowerCase();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
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
